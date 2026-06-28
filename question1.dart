// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

// 1. Create variables of different data types: String, int, double, bool
// TODO: Add your variables here
String name = '';
int age = 0;
double height = 0;
bool isStudent = false;


// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// TODO: Implement the calculateBMI function
double calculateBMI(double weight, double height) {
  double bmi =weight / (height * height);

  // TODO: Calculate BMI = weight / (height * height)
  return bmi;
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// TODO: Implement the getGrade function
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if ( score >= 80) {
    return 'B';
  }
  else if (score >= 70) {
    return 'C';
  }
  else if (score >= 60) {
    return 'D';
  }
  else {
    return 'F';
  }
  // TODO: Add your logic here
}

void main() {
  // TODO: Initialize your variables with appropriate values
  String name = 'Fahim Mahtab';
  int age = 26;
  double height = 1.7018; // Converted Height from inches to meters manually
  bool isStudent = true;

  // TODO: Calculate BMI and grade
  double bmi = calculateBMI(74,height);
  String grade = getGrade(80);

  // TODO: Use string interpolation to display the results as shown in expected output
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('BMI: $bmi');
  print('Grade: $grade');
}