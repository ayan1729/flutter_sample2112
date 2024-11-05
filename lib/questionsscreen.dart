import 'package:flutter/material.dart';
import 'package:adv_basics/answerbutton.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              //style: const TextStyle(color: Colors.white),
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentquestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            })
          ],
          // AnswerButton(answerText: currentquestion.answers[0], onTap: () {}),
          // AnswerButton(answerText: currentquestion.answers[1], onTap: () {}),
          // AnswerButton(answerText: currentquestion.answers[2], onTap: () {}),
          // AnswerButton(answerText: currentquestion.answers[3], onTap: () {})

          // ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer 4")),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer 5")),
          // ElevatedButton(onPressed: () {}, child: const Text("Answer 6"))
        ),
      ),
    );
  }
}
