import 'package:programming_quiz/Models/question.dart';

class QuizData {
  static Map<String, List<Question>> quizzesByLanguage = {
    'Python': [
      Question(
        questionText: 'What is the output of print(type(5/2)) in Python 3?',
        options: [
          '<class \'int\'>',
          '<class \'float\'>',
          '<class \'number\'>',
          '<class \'double\'>'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which of these is not a Python built-in data type?',
        options: ['List', 'Dictionary', 'Array', 'Tuple'],
        correctAnswerIndex: 2,
      ),
      // Add more questions...
    ],
    'JavaScript': [
      Question(
        questionText: 'What will be the output of: console.log(typeof([]));',
        options: ['array', 'object', 'list', 'undefined'],
        correctAnswerIndex: 1,
      ),
      // Add more questions...
    ],
    // Add more language quizzes...
  };
}
