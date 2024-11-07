import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //opacity widget, avoid it. use color instead
          Image.asset(
            "assets/images/quiz-logo2.png",
            width: 400,
            height: 430,
            color: const Color.fromARGB(255, 255, 255, 255),
            // color: const Color.fromARGB(245, 15, 53, 206),
          ),
          const SizedBox(height: 0),
          Text('''        Take a Quiz  &
Test Your Knowledge :)''',
              style: GoogleFonts.playfairDisplay(
                textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 213, 228, 236)),
              )),
          // Text(
          //           '''          Take a Quiz
          //                  &
          // Test Your Knowledge!''',
          //           style: TextStyle(color: Colors.white, fontSize: 28),
          //         ),
          const SizedBox(height: 40),
          //Icon()
          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt,
                color: Color.fromARGB(255, 5, 5,
                    5)), //if we define icon inside button it makes it clickable
            style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                backgroundColor: const Color(0xFFA5D6A7)),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}

//IMPORTANT ABOVE

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:adv_basics/questionsscreen.dart'; // Import QuestionsScreen

// class StartScreen extends StatelessWidget {
//   const StartScreen(this.startQuiz, {super.key});
//   final void Function() startQuiz;

//   @override
//   Widget build(context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Opacity widget avoided, using color directly
//           Image.asset(
//             "assets/images/quiz-logo2.png",
//             width: 400,
//             height: 425,
//             color: Colors.orange,
//           ),
//           const SizedBox(height: 60),
//           Text(
//             '''Take a Quiz  &
//             Test Your Knowledge :)''',
//             style: GoogleFonts.playfairDisplay(
//               textStyle: const TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ),
//           const SizedBox(height: 40),
//           ElevatedButton.icon(
//             onPressed: () {
//               // Define a function to pass as onSelectAnswer
//               void selectAnswer(String answer) {
//                 // This can do something with the answer, like add to selected answers
//                 print(answer);
//               }

//               // Navigate to the QuestionsScreen with a slide transition
//               Navigator.of(context).push(
//                 PageRouteBuilder(
//                   pageBuilder: (context, animation, secondaryAnimation) =>
//                       QuestionsScreen(
//                     onSelectAnswer: selectAnswer, // Pass the correct function
//                   ),
//                   transitionsBuilder:
//                       (context, animation, secondaryAnimation, child) {
//                     const begin = Offset(1.0, 0.0); // Start from the right
//                     const end = Offset.zero;
//                     const curve = Curves.easeInOut;

//                     var tween = Tween(begin: begin, end: end)
//                         .chain(CurveTween(curve: curve));
//                     var offsetAnimation = animation.drive(tween);

//                     return SlideTransition(
//                       position: offsetAnimation,
//                       child: child,
//                     );
//                   },
//                 ),
//               );
//             },
//             icon: const Icon(Icons.arrow_right_alt,
//                 color: Color.fromARGB(255, 5, 5, 5)), // Icon color
//             style: ElevatedButton.styleFrom(
//               foregroundColor: const Color.fromARGB(255, 12, 12, 12),
//               backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//             ),
//             label: const Text(
//               "Start Quiz",
//               style: TextStyle(fontSize: 21),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class StartScreen extends StatelessWidget {
//   // Accept the function that starts the quiz
//   final void Function() startQuiz;

//   // Constructor expects this function
//   const StartScreen({Key? key, required this.startQuiz}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Image at the top of the screen
//           Image.asset(
//             "assets/images/quiz-logo2.png",
//             width: 400,
//             height: 425,
//             color: Colors.orange,
//           ),
//           const SizedBox(height: 60),
//           // Title text
//           Text(
//             '''Take a Quiz  &
//             Test Your Knowledge :)''',
//             style: GoogleFonts.playfairDisplay(
//               textStyle: const TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ),
//           const SizedBox(height: 40),
//           // Button to start the quiz
//           ElevatedButton.icon(
//             onPressed: startQuiz, // Call the function passed from main.dart
//             icon: const Icon(Icons.arrow_right_alt,
//                 color: Color.fromARGB(255, 5, 5, 5)),
//             style: ElevatedButton.styleFrom(
//                 foregroundColor: const Color.fromARGB(255, 12, 12, 12),
//                 backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
//             label: const Text(
//               "Start Quiz",
//               style: TextStyle(fontSize: 21),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
