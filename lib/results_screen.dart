// // import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:adv_basics/questions_summary/questions_summary.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ResultsScreen extends StatelessWidget {
//   const ResultsScreen(
//       {super.key, required this.chosenAnswers, required this.onRestart});
//   final void Function() onRestart;

//   final List<String> chosenAnswers;
//   // final String text;
//   // final bool isCorrect;

//   // List<Map<String, Object>> getSummaryData() {
//   //   final List<Map<String, Object>> summary = [];

//   //   for (var i = 0; i < chosenAnswers.length; i++) {
//   //     final question = questions[i];
//   //     final correctAnswers =
//   //         question.answers.where((answer) => answer.isCorrect).toList();
//   //     final isCorrect = correctAnswers
//   //         .any((correctAnswer) => correctAnswer.toString() == chosenAnswers[i]);

//   //     summary.add({
//   //       'question_index': i,
//   //       'question': question.text,
//   //       'correct_answers': correctAnswers.map((answer) => answer.toString()).toList(),
//   //       'user_answer': chosenAnswers[i],
//   //       'is_correct': isCorrect,
//   //     });
//   //   }

//   //   return summary;
//   // }

//   List<Map<String, Object>> getSummaryData() {
//     final List<Map<String, Object>> summary = [];

//     for (var i = 0; i < chosenAnswers.length; i++) {
//       //loop body
//       summary.add(
//         {
//           'question_index': i,
//           'question': questions[i].text,
//           // 'correct_answer': questions[i].answers[0],
//           'correct_answer':
//               questions[i].correctAnswer, // Update to get the correct answer
//           'user_answer': chosenAnswers[i]
//         },
//       );
//     }
//     return summary;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final summaryData = getSummaryData();
//     final numTotalQuestions = questions.length;
//     final numCorrectQuestions = summaryData.where((data) {
//       return data['user_answer'] == data['correct_answer'];
//     }).length;

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!!',
//               style: GoogleFonts.lato(
//                 color: Colors.black,
//                 fontSize: 27,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             const SizedBox(
//               height: 50,
//             ),

//             QuestionSummary(summaryData),
//             //const Text('list of answers and questions'),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton.icon(
//               onPressed: onRestart,
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: const Color.fromARGB(255, 5, 5, 5),
//               ),
//               icon: const Icon(Icons.refresh),
//               label: const Text(
//                 'Restart Quiz',
//                 style: TextStyle(fontSize: 22),
//               ),

//               // child: const Text(
//               //   'Restart Quiz',
//               //   style: TextStyle(color: Colors.white),
//               // )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//IMPORTANT ABOVE

// import 'package:flutter/material.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:adv_basics/questions_summary/questions_summary.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ResultsScreen extends StatelessWidget {
//   const ResultsScreen({
//     super.key,
//     required this.chosenAnswers,
//     required this.onRestart,
//   });

//   final void Function() onRestart;
//   final List<String> chosenAnswers;

//   List<Map<String, Object>> getSummaryData() {
//     final List<Map<String, Object>> summary = [];

//     for (var i = 0; i < chosenAnswers.length; i++) {
//       summary.add(
//         {
//           'question_index': i,
//           'question': questions[i].text,
//           'correct_answer':
//               questions[i].answers[0], // Ensure this is the correct answer
//           'user_answer': chosenAnswers[i]
//         },
//       );
//     }
//     return summary;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final summaryData = getSummaryData();
//     final numTotalQuestions = questions.length;
//     final numCorrectQuestions = summaryData.where((data) {
//       return data['user_answer'] == data['correct_answer'];
//     }).length;

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
//               style: GoogleFonts.lato(
//                 color: Colors.black,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             QuestionSummary(
//                 summaryData), // Ensure this widget does not add ellipsis
//             const SizedBox(height: 30),
//             TextButton.icon(
//               onPressed: onRestart,
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.white,
//               ),
//               icon: const Icon(Icons.refresh),
//               label: const Text('Restart Quiz'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:adv_basics/questions_summary/questions_summary.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ResultsScreen extends StatelessWidget {
//   const ResultsScreen({
//     super.key,
//     required this.chosenAnswers,
//     required this.onRestart,
//   });

//   final void Function() onRestart;
//   final List<String> chosenAnswers;

//   List<Map<String, Object>> getSummaryData() {
//     final List<Map<String, Object>> summary = [];

//     for (var i = 0; i < chosenAnswers.length; i++) {
//       summary.add({
//         'question_index': i,
//         'question': questions[i].text,
//         'correct_answer':
//             questions[i].answers[0], // Ensure correct answer is here
//         'user_answer': chosenAnswers[i]
//       });
//     }
//     return summary;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final summaryData = getSummaryData();
//     final numTotalQuestions = questions.length;
//     final numCorrectQuestions = summaryData.where((data) {
//       return data['user_answer'] == data['correct_answer'];
//     }).length;

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
//               style: GoogleFonts.lato(
//                 color: Colors.black,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             Expanded(
//               // Wrap QuestionSummary in Expanded for full display
//               child: QuestionSummary(summaryData),
//             ),
//             const SizedBox(height: 30),
//             TextButton.icon(
//               onPressed: onRestart,
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.white,
//               ),
//               icon: const Icon(Icons.refresh),
//               label: const Text('Restart Quiz'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:adv_basics/data/questions.dart';
// import 'package:adv_basics/questions_summary/questions_summary.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ResultsScreen extends StatelessWidget {
//   const ResultsScreen({
//     super.key,
//     required this.chosenAnswers,
//     required this.onRestart,
//     required this.isTimeUp, // Accept this argument in the constructor
//   });

//   final List<String> chosenAnswers;
//   final void Function() onRestart;
//   final bool isTimeUp; // Declare this parameter

//   List<Map<String, Object>> getSummaryData() {
//     final List<Map<String, Object>> summary = [];

//     for (var i = 0; i < chosenAnswers.length; i++) {
//       summary.add(
//         {
//           'question_index': i,
//           'question': questions[i].text,
//           'correct_answer': questions[i].correctAnswer,
//           'user_answer': chosenAnswers[i],
//         },
//       );
//     }
//     return summary;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final summaryData = getSummaryData();
//     final numTotalQuestions = questions.length;
//     final numCorrectQuestions = summaryData.where((data) {
//       return data['user_answer'] == data['correct_answer'];
//     }).length;

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               isTimeUp
//                   ? "Time's Up! Better Luck Next Time!!"
//                   : 'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
//               style: GoogleFonts.lato(
//                 color: Colors.black,
//                 fontSize: 27,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             QuestionSummary(summaryData),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton.icon(
//               onPressed: onRestart,
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: const Color.fromARGB(255, 5, 5, 5),
//               ),
//               icon: const Icon(Icons.refresh),
//               label: const Text(
//                 'Restart Quiz',
//                 style: TextStyle(fontSize: 22),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
    required this.isTimeUp,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;
  final bool isTimeUp;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].correctAnswer,
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Updated message for time-up
            // Text(
            //   isTimeUp
            //       ? 'Oops!! Times up\nYour score: $numCorrectQuestions/$numTotalQuestions'
            //       : 'Yay!! You finished on time\nYour score: $numCorrectQuestions/$numTotalQuestions',
            //   style: GoogleFonts.playfairDisplay(
            //     color: const Color.fromARGB(255, 255, 255, 255),
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: isTimeUp
                        ? 'Oops!! Times up\n'
                        : 'Yay!! You finished on time\n',
                    style: GoogleFonts.playfairDisplay(
                      color: isTimeUp
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 255, 255,
                              255), // Different colors for different messages
                      fontSize:
                          24, // Larger size for the first part of the message
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Your score: ',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(
                          255, 255, 5, 5), // Default color for the score text
                      fontSize:
                          22, // Smaller size for the text before the score
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$numCorrectQuestions/$numTotalQuestions',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(
                          255, 0, 0, 0), // Highlighted color for the score
                      fontSize: 24, // Larger size for the score itself
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 5, 5, 5),
                  backgroundColor: const Color(0xFFE0E0E0)),
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
