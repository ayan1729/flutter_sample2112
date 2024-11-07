import 'package:flutter/material.dart';

class CompletedWithinTimeScreen extends StatelessWidget {
  const CompletedWithinTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigate to results screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/results');
    });

    return const Scaffold(
      body: Center(
        child: const Text(
          "Hurray!! You Completed the Quiz Within Time!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
