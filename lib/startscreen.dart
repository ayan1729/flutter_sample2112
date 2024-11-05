import 'package:flutter/material.dart';

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
            "assets/images/quiz-logo.png",
            width: 320,
            height: 320,
            color: const Color.fromARGB(240, 127, 237, 252),
          ),
          const SizedBox(height: 65),
          const Text(
            "Learn Flutter The Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 24),
          //Icon()
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt,
                color: Colors
                    .black), //if we define icon inside button it makes it clickable
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 92, 245, 248)),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
