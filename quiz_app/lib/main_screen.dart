import 'package:flutter/material.dart';

/* MainScreen is a stateless widget that serves as the initial screen of the quiz app.
 It displays a background color, an image, a title, and a button to start the quiz.*/

class MainScreen extends StatelessWidget {
  // Constructor for MainScreen. It takes a callback function `startQuiz`
  // that is triggered when the "Start Quiz" button is pressed.
  const MainScreen(this.startQuiz, {super.key});

  // Callback function to handle the "Start Quiz" button press.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the screen to a purple shade.
      backgroundColor: Color(0xFF560099),
      body: Column(
        // Center child widgets vertically within the column.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display an image at the top of the screen with slight transparency.
          Image.asset(
            "assets/images/quiz.png",
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 300, // Set the width of the image.
          ),
          SizedBox(height: 30), // Add vertical spacing between widgets.
          // Display a title text below the image.
          Center(
            child: Text(
              "Learn Flutter the fun way!", // Title text.
              style: TextStyle(
                color: Colors.white, // Set text color to white.
                fontSize: 24, // Set font size.
                fontWeight: FontWeight.normal, // Set font weight.
              ),
            ),
          ),
          SizedBox(height: 30), // Add more vertical spacing.
          // Add a button that starts the quiz when pressed.
          OutlinedButton.icon(
            icon: Icon(
              Icons.arrow_right_alt, // Add an arrow icon to the button.
              color: Colors.white,
            ),
            onPressed: startQuiz, // Trigger the `startQuiz` function on press.
            style: OutlinedButton.styleFrom(
              foregroundColor:
                  Colors.white, // Style the button with white text and icon.
            ),
            label: Text("Start Quiz"), // Button label text.
          ),
        ],
      ),
    );
  }
}
