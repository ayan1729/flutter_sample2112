//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});
  final void Function() onRestart;

  final List<String> chosenAnswers;
  // final String text;
  // final bool isCorrect;

  // List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];

  //   for (var i = 0; i < chosenAnswers.length; i++) {
  //     final question = questions[i];
  //     final correctAnswers =
  //         question.answers.where((answer) => answer.isCorrect).toList();
  //     final isCorrect = correctAnswers
  //         .any((correctAnswer) => correctAnswer.toString() == chosenAnswers[i]);

  //     summary.add({
  //       'question_index': i,
  //       'question': question.text,
  //       'correct_answers': correctAnswers.map((answer) => answer.toString()).toList(),
  //       'user_answer': chosenAnswers[i],
  //       'is_correct': isCorrect,
  //     });
  //   }

  //   return summary;
  // }

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          // 'correct_answer': questions[i].answers[0],
          'correct_answer':
              questions[i].correctAnswer, // Update to get the correct answer
          'user_answer': chosenAnswers[i]
        },
      );
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
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!!',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 30,
            ),

            QuestionSummary(summaryData),
            //const Text('list of answers and questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz')
                // child: const Text(
                //   'Restart Quiz',
                //   style: TextStyle(color: Colors.white),
                // )
                )
          ],
        ),
      ),
    );
  }
}

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
