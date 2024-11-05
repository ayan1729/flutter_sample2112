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

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // const QuestionScreens();
    });
  }

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
        appBar: AppBar(
          title: const Text(
            "Quiz App-",
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
          toolbarHeight: 32,
          // elevation: 100,
          // shape: const BeveledRectangleBorder(side: BorderSide(width: 0.5)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 6, 133, 237),
                Color.fromARGB(255, 6, 82, 196),
                Color.fromARGB(255, 2, 28, 155),
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
