import 'package:flutter/material.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Variable to keep track of the currently active screen in the app.
  // Initially, the app starts with the 'main-screen' as the active screen.
  var activeScreen = 'main-screen';

  // Function to switch the active screen from the main screen to the questions screen.
  // This function is triggered when the user interacts with the main screen (e.g., pressing a button).
  // It updates the state of the widget, causing the UI to rebuild and display the QuestionsScreen.
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        activeScreen == 'main-screen'
            ? MainScreen(switchScreen)
            : QuestionsScreen();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF560099), Color(0xFF9B1CFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // The child widget dynamically changes based on the value of 'activeScreen'.
          // If 'activeScreen' is set to 'main-screen', the MainScreen widget is displayed.
          // The MainScreen widget takes a function (switchScreen) as an argument, which allows it to notify
          // the parent widget (_QuizState) when the user interacts with it (e.g., pressing a button).
          // When 'activeScreen' is set to 'questions-screen', the QuestionsScreen widget is displayed instead.
          // This dynamic switching of widgets enables the app to transition between different screens
          // based on user interaction, creating a seamless navigation experience.
          child: screenWidget,
        ),
      ),
    );
  }
}
