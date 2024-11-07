import 'package:adv_basics/questionsscreen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/startscreen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  /*var, we changed var with widget var restricts us from changing the value
  to someother widgets */
  //Widget?
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
//impotant
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // const QuestionScreens();
    });
  }
//important
  // void switchScreen() {
  //   Navigator.of(context).push(
  //     PageRouteBuilder(
  //       pageBuilder: (context, animation, secondaryAnimation) =>
  //           QuestionsScreen(
  //         onSelectAnswer: chooseAnswer,
  //       ),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(1.0, 0.0); // Start off-screen right
  //         const end = Offset.zero;
  //         const curve = Curves.easeInOut;

  //         var tween =
  //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //         var offsetAnimation = animation.drive(tween);

  //         return SlideTransition(
  //           position: offsetAnimation,
  //           child: child,
  //         );
  //       },
  //     ),
  //   );
  // }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Quiz App-",
        //     style: TextStyle(color: Colors.white, fontSize: 19),
        //   ),
        //   toolbarHeight: 32,
        //   // elevation: 100,
        //   // shape: const BeveledRectangleBorder(side: BorderSide(width: 0.5)),
        //   backgroundColor: Colors.black,
        // ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Color.fromARGB(255, 6, 133, 237),
                // Color.fromARGB(255, 6, 82, 196),
                // Color.fromARGB(255, 2, 28, 155),

                // Color.fromARGB(255, 6, 133, 237),
                // Color.fromARGB(255, 13, 136, 237),
                // Colors.deepPurple

                // Color(0xFFFF6B6B), Color(0xFFFFD93D), Color(0xFF6BCB77)
                Color(0xFF00C6FF), Color(0xFF0072FF), Color(0xFF004E92)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          //activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionScreens(), //activeScreen,
        ),
      ),
    );
  }
}
/*when we call setstate inside the state class,
 flutter re-executes the build method resulting in change of state or
 simply the interface.
 this is the use case of satefulwidget
 video NO 59 IMP for concept building and report ppt and all
 video 60 vvip */







// import 'package:flutter/material.dart';
// import 'package:adv_basics/countdown_timer.dart'; // Import the CountdownTimer widget
// import 'package:adv_basics/startscreen.dart';
// import 'package:adv_basics/questionsscreen.dart';
// import 'package:adv_basics/results_screen.dart';
// import 'package:adv_basics/data/questions.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   List<String> selectedAnswers = [];
//   var activeScreen = 'start-screen';
//   final int quizDuration = 60; // Duration of the quiz in seconds

//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questions-screen';
//     });
//   }

//   void chooseAnswer(String answer) {
//     selectedAnswers.add(answer);

//     if (selectedAnswers.length == questions.length) {
//       setState(() {
//         activeScreen = 'results-screen';
//       });
//     }
//   }

//   void restartQuiz() {
//     setState(() {
//       selectedAnswers = [];
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget screenWidget = StartScreen(switchScreen);

//     if (activeScreen == 'questions-screen') {
//       screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
//     }

//     if (activeScreen == 'results-screen') {
//       screenWidget = ResultsScreen(
//         chosenAnswers: selectedAnswers,
//         onRestart: restartQuiz,
//       );
//     }

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Quiz App",
//             style: TextStyle(color: Colors.white, fontSize: 19),
//           ),
//           toolbarHeight: 32,
//           backgroundColor: Colors.black,
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CountdownTimer(duration: quizDuration), // 60-second timer
//             ),
//           ],
//         ),
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 6, 133, 237),
//                 Color.fromARGB(255, 6, 82, 196),
//                 Color.fromARGB(255, 2, 28, 155),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: screenWidget,
//         ),
//       ),
//     );
//   }
// }
