# Personality Quiz

## Overview

Welcome to the **Personality Quiz** project! This application is designed to help users discover which animal they are most closely associated with based on their personality traits. Whether used in educational settings, psychological assessments, or just for fun with friends, this quiz offers a unique and engaging way to explore personal characteristics and find animal counterparts.

## Why This Project?

I created this app because the concept of matching personalities with animals has a wide range of applications. Here are a few reasons why this idea is valuable:

- **Educational Purposes**: Teachers and educators can use this quiz to make learning about personalities more interactive and enjoyable for students.
- **Statistical Analysis**: Researchers can utilize the quiz for gathering data on personality traits and analyzing trends or patterns.
- **Psychological Programs**: Psychologists and counselors can incorporate this tool into their sessions to facilitate discussions and self-discovery.
- **Entertainment**: It can be a fun activity for friends, parties, or team-building events, offering a light-hearted way to learn about each other.

## Features

- **User-Friendly Interface**: The quiz is designed with simplicity and ease of use in mind, making it accessible for users of all ages.
- **Personalized Results**: At the end of the quiz, users receive a detailed description of the animal that best matches their personality.
- **Versatility**: Suitable for various contexts, including educational, professional, and social environments.
- **Shareable Results**: Users can share their results with friends and family, sparking interesting conversations and comparisons.

## Coding Explanation

This project is built using Swift and UIKit. Here's an overview of the main components and methods used:

### ViewController.swift

- **IntroductionViewController**: Manages the introduction screen of the quiz.
  - `viewDidLoad()`: Initializes the view when it is loaded.
  - `unwindToQuizIntroduction(segue:)`: Allows unwinding back to the introduction screen.

### Question.swift

- **Question**: A struct representing a quiz question, including the text, response type, and possible answers.
- **ResponseType**: An enum defining the type of responses (single, multiple, ranged).
- **Answer**: A struct representing an answer choice, including the text and corresponding animal type.
- **AnimalType**: An enum representing different animal types, each with a definition property that provides a description.

### QuestionViewController.swift

- **QuestionViewController**: Manages the quiz questions and user interactions.
  - `viewDidLoad()`: Initializes the view and updates the UI with the first question.
  - `updateUI()`: Updates the UI based on the current question.
  - `singleAnswerButtonPressed(_:)`, `multipleAnswerButtonPressed()`, `rangedAnswerButtonPressed()`: Handle user selections and navigate to the next question.
  - `updateSingleStack(using:)`, `updateMultipleStack(using:)`, `updateRangedStack(using:)`: Configure the UI for different types of questions.
  - `nextQuestion()`: Advances to the next question or navigates to the results screen.

### ResultsViewController.swift

- **ResultsViewController**: Displays the result of the quiz.
  - `calculatePersonalityResult()`: Determines the most common answer from the user's responses and displays the corresponding animal type and definition.

## Contact

If you have any questions, suggestions, or feedback, please don't hesitate to reach out. You can contact me through GitHub or via email at (mailto:baharnikfal@gmail.com).

---

Thank you for checking out the **Personality Quiz** project. Have fun discovering your inner animal!
