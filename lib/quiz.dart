import 'package:flutter/material.dart';
import 'package:second_basic/start_screen.dart';
import 'package:second_basic/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Second Basic App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 74, 15, 142),
              Color.fromARGB(255, 129, 19, 203),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
