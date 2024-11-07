import "package:flutter/material.dart";
import 'package:adv_basics/quiz.dart';

void main() {
  runApp(
    const Quiz(),
  );
}
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           backgroundColor: const Color.fromARGB(255, 5, 122, 217),
//           body: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   "assets/images/quiz-logo.png",
//                   width: 300,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   "Learn Flutter The Fun Way",
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {}, child: const Text("Start Quiz"))
//               ],
//             ),
//           )),
//     ),
//   );
// }
