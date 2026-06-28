// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
// ignore_for_file: unused_local_variable, prefer_final_locals, prefer_final_in_for_each, omit_local_variable_types

/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  // TODO: Create the student names list
  List<String> studentNames = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // 2. Create a Map<String, int> to store student scores
  // TODO: Create the scores map
  Map<String, int> studentScores = {};

  // 3. Use a for loop to assign random scores (60-100) to each student
  // TODO: Implement the for loop to assign random scores
  final random = Random();
  for (String name in studentNames){
    studentScores[name] = random.nextInt(40) + 60;
  }





  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  // TODO: Implement the logic to find highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  int total = 0;
  for (String student in studentNames){
    int score = studentScores[student] ?? 0;
    total =total + score;
    if (score > highestScore){
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore){
      lowestScore = score;
      lowestStudent = student;
    }
  }
  double averageScore = total / studentNames.length;
  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: $averageScore');

  // TODO: Add your logic here

  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: $averageScore');

  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  // TODO: Implement the switch statement for each student
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";
    switch (score ~/ 10) {
      case 9:
      case 10:
        category = "Excellent";
        break;

      case 8:
        category = "Good";
        break;

      case 7:
        category = "Average";
        break;

      default:
        category = "Needs Improvement";
    }

    // TODO: Add your switch statement here

    print("$student: $score ($category)");
  }
}