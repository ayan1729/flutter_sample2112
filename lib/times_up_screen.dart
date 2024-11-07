import 'package:flutter/material.dart';

class TimesUpScreen extends StatelessWidget {
  final int attemptedQuestions;
  final int totalQuestions;

  const TimesUpScreen({
    Key? key,
    required this.attemptedQuestions,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigate to results screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/results');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Time's Up! Better Luck Next Time!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              "You attempted $attemptedQuestions out of $totalQuestions questions.",
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
