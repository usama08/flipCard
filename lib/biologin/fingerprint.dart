import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  LocalAuthentication auth = LocalAuthentication();
  String msg = "You are not authorized.";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/fingerprint.png', // Replace 'assets/fingerprint.png' with your actual image asset path
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(msg),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  bool hasBiometrics = await auth.canCheckBiometrics;

                  if (hasBiometrics) {
                    bool pass = await auth.authenticate(
                      localizedReason: 'Authenticate with fingerprint',
                    );
                    if (pass) {
                      msg = "You are Authenticated.";
                      setState(() {});
                    }
                  } else {
                    // Fingerprint authentication not available, show passcode authentication
                    bool pass = await auth.authenticate(
                      localizedReason: 'Authenticate with pattern/pin/passcode',
                    );
                    if (pass) {
                      msg = "You are Authenticated.";
                      setState(() {});
                    }
                  }
                } on PlatformException catch (e) {
                  print(e);
                  msg = "Error while opening fingerprint/face scanner";
                }
              },
              child: const Text('Authorization'),
            ),
          ],
        ),
      ),
    );
  }
}
