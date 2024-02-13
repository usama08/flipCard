import 'package:flipcard/biologin/fingerprint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FingerPrint(),
    );
  }
}


// void main() {
//   runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false, home: Scaffold(body: MyApp())));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   final Widget _front = const Card1();
//   final Widget _back = const Card2();
//   late Widget _card = _front;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 600));
//     _controller.addListener(() {
//       if (_controller.value >= .5 && _card != _back) {
//         setState(() => _card = _back);
//       } else if (_controller.value < .5 && _card != _front) {
//         setState(() => _card = _front);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//           if (_controller.value == 1) {
//             _controller.reverse(from: 1);
//           } else {
//             _controller.forward(from: 0);
//           }
//         },
//         child: AnimatedBuilder(
//           animation: _controller,
//           builder: (c, anim) => Transform(
//             transform: Matrix4.identity()
//               ..setEntry(3, 2, 0.0025)
//               ..rotateY(_controller.value * pi),
//             alignment: FractionalOffset.center,
//             child: _card,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Card1 extends StatelessWidget {
//   const Card1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 270,
//       height: 560,
//       decoration: BoxDecoration(
//           color: Colors.red[100], borderRadius: BorderRadius.circular(20)),
//       child: const Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Flip to Check =>',
//             style: TextStyle(color: Colors.red, fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Card2 extends StatelessWidget {
//   const Card2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Transform.scale(
//       scaleX: -1,
//       child: Container(
//         width: 270,
//         height: 560,
//         decoration: BoxDecoration(
//             color: Colors.yellow[200], borderRadius: BorderRadius.circular(20)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Presseed to Verify that',
//               style: TextStyle(color: Colors.orange[400], fontSize: 20),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: 70,
//               height: 40,
//               decoration: BoxDecoration(
//                   color: Colors.orange[400],
//                   borderRadius: BorderRadius.circular(10)),
//               child: const Text('Verfiy',
//                   style: TextStyle(
//                     color: Colors.white,
//                   )),
//             ),
//             Text("Don't Forget to Verify it",
//                 style: TextStyle(
//                   color: Colors.orange[400],
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
