// import 'package:flutter/material.dart';
// import 'package:adv_basics/answerbutton.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:google_fonts/google_fonts.dart';

// class QuestionsScreen extends StatefulWidget {
//   const QuestionsScreen({super.key, required this.onSelectAnswer});
//   final void Function(String answer) onSelectAnswer;
//   @override
//   State<QuestionsScreen> createState() {
//     return _QuestionsScreenState();
//   }
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   var currentQuestionIndex = 0;

//   void answerQuestion(String selectedAnswers) {
//     widget.onSelectAnswer(selectedAnswers);
//     setState(() {
//       currentQuestionIndex++;
//     });
//   }

//   @override
//   Widget build(context) {
//     final currentquestion = questions[currentQuestionIndex];

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentquestion.text,
//               //style: const TextStyle(color: Colors.white),
//               style: GoogleFonts.playfairDisplay(
//                   color: Colors.white,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             ...currentquestion.getShuffledAnswers().map((answer) {
//               return AnswerButton(
//                   answerText: answer,
//                   onTap: () {
//                     answerQuestion(answer);
//                   });
//             })
//           ],
//           // AnswerButton(answerText: currentquestion.answers[0], onTap: () {}),
//           // AnswerButton(answerText: currentquestion.answers[1], onTap: () {}),
//           // AnswerButton(answerText: currentquestion.answers[2], onTap: () {}),
//           // AnswerButton(answerText: currentquestion.answers[3], onTap: () {})

//           // ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
//           // ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
//           // ElevatedButton(onPressed: () {}, child: const Text("Answer 4")),
//           // ElevatedButton(onPressed: () {}, child: const Text("Answer 5")),
//           // ElevatedButton(onPressed: () {}, child: const Text("Answer 6"))
//         ),
//       ),
//     );
//   }
// }

//IMPORTANT ABOVE

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:adv_basics/data/questions.dart';

// class QuestionsScreen extends StatefulWidget {
//   final void Function(String) onSelectAnswer;

//   const QuestionsScreen({super.key, required this.onSelectAnswer});

//   @override
//   _QuestionsScreenState createState() => _QuestionsScreenState();
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   int currentQuestionIndex = 0;

//   void answerQuestion(String selectedAnswer) {
//     widget.onSelectAnswer(selectedAnswer);
//     setState(() {
//       currentQuestionIndex++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currentQuestion = questions[currentQuestionIndex];

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // AnimatedSwitcher for the Question Text
//             AnimatedSwitcher(
//               duration: const Duration(seconds: 1),
//               transitionBuilder: (child, animation) {
//                 // Here, we're using a fade transition by default
//                 return FadeTransition(opacity: animation, child: child);
//               },
//               child: Text(
//                 currentQuestion.text,
//                 key: ValueKey<int>(
//                     currentQuestionIndex), // Unique key for each question
//                 style: GoogleFonts.playfairDisplay(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             const SizedBox(height: 30),
//             // Render answer buttons
//             ...currentQuestion.getShuffledAnswers().map((answer) {
//               return ElevatedButton(
//                 onPressed: () {
//                   answerQuestion(answer);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//                   backgroundColor: Colors.pink,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                 ),
//                 child: Text(answer),
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:adv_basics/answerbutton.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:google_fonts/google_fonts.dart';

// class QuestionsScreen extends StatefulWidget {
//   const QuestionsScreen({
//     super.key,
//     required this.onSelectAnswer,
//     required this.remainingTime,
//     required this.onTimeUp,
//     required this.isTimeUp, // Add the isTimeUp parameter here
//   });

//   final void Function(String answer) onSelectAnswer;
//   final int remainingTime;
//   final VoidCallback onTimeUp;
//   final bool isTimeUp; // Add the isTimeUp property here

//   @override
//   State<QuestionsScreen> createState() {
//     return _QuestionsScreenState();
//   }
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   var currentQuestionIndex = 0;
//   late List<String> shuffledAnswers;

//   @override
//   void initState() {
//     super.initState();
//     shuffledAnswers = questions[currentQuestionIndex].getShuffledAnswers();
//   }

//   void answerQuestion(String selectedAnswer) {
//     widget.onSelectAnswer(selectedAnswer);
//     setState(() {
//       currentQuestionIndex++;
//       if (currentQuestionIndex < questions.length) {
//         shuffledAnswers = questions[currentQuestionIndex].getShuffledAnswers();
//       }
//     });
//   }

//   @override
//   Widget build(context) {
//     final currentQuestion = questions[currentQuestionIndex];

//     if (widget.remainingTime == 0) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         widget.onTimeUp();
//       });
//     }

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentQuestion.text,
//               style: GoogleFonts.playfairDisplay(
//                 color: Colors.white,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             Text(
//               'Time Remaining: ${widget.remainingTime ~/ 60}:${(widget.remainingTime % 60).toString().padLeft(2, '0')}',
//               style: GoogleFonts.lato(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             ...shuffledAnswers.map((answer) {
//               return AnswerButton(
//                 answerText: answer,
//                 onTap: () {
//                   answerQuestion(answer);
//                 },
//               );
//             }).toList(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:adv_basics/answerbutton.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
    required this.remainingTime,
    required this.onTimeUp,
  });

  final void Function(String answer) onSelectAnswer;
  final int remainingTime;
  final VoidCallback onTimeUp;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  late List<String> shuffledAnswers;

  @override
  void initState() {
    super.initState();
    shuffledAnswers = questions[currentQuestionIndex].getShuffledAnswers();
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex < questions.length) {
        shuffledAnswers = questions[currentQuestionIndex].getShuffledAnswers();
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    if (widget.remainingTime == 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onTimeUp();
      });
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              'Time Remaining: ${widget.remainingTime ~/ 60}:${(widget.remainingTime % 60).toString().padLeft(2, '0')}',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...shuffledAnswers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
