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
        questionText:
            'Which of the following is not a valid keyword in Python?',
        options: ['lambda', 'def', 'function', 'class'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'What will be the output of the following code? print(2 ** 3)',
        options: ['6', '8', '9', 'Error'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the correct way to create a dictionary in Python?',
        options: ['{}', '[]', '()', 'set()'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'What will be the output of the following code? print("Python"[::-1])',
        options: ['Python', 'nohtyP', 'Error', 'PythonPython'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following is used to create comment in Python?',
        options: ['//', '#', '/* */', '<!-- -->'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What does the len() function do in Python?',
        options: [
          'Returns the number of elements i a list',
          'Return the length of a string',
          'Can be used for both lists and strings',
          'All of the above'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'What will be the output for the following code? \nx = [1, 2, 3] \ny = x \ny.append(4) \nprint(x)',
        options: ['[1, 2, 3]', '[1, 2, 3, 4]', 'Error', '[4]'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following data types is immutable in Python?',
        options: ['List', 'Set', 'Dictionary', 'Tuple'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'How do you define a function in Python',
        options: [
          'function myFunc():',
          'def myFunc():',
          'func myFunc();',
          'function: myFunc()'
        ],
        correctAnswerIndex: 1,
      ),
    ],
    'JavaScript': [
      Question(
        questionText:
            'What is the correct way to write a comment in JavaScript?',
        options: [
          '<!-- This is a comment -->',
          '/* This is a comment */',
          '// This is a comment',
          'Both 2 and 3'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'Which data type is NOT supported in JavaScript?',
        options: ['Boolean', 'Undefined', 'Float', 'Object'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'What is the output of the following code? \nconsole.log(typeof null);',
        options: ['null', 'undefined', 'object', 'string'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'How do you declare a variable in JavaScript?',
        options: ['int x = 5;', 'let x = 5;', 'var x == 5;', 'x := 5;'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What does the === operator do in JavaScript?',
        options: [
          'Compare values only',
          'Compare data type only',
          'Compare both values and data type',
          'Throws an error'
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Which method can be used to remove the last element from an array?',
        options: ['shift()', 'pop()', 'removeLast()', 'splice(-1)'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What will NaN evaluate to when compared using === with itself?',
        options: ['true', 'false', 'undefined', 'NaN'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the purpose of the return statement in a function?',
        options: [
          'To exit the function',
          'To return a value from the function',
          'Both 1 and 2',
          'To make the function recursive'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which of the following is not a valid JavaScript loop?',
        options: ['for', 'foreach', 'do...while', 'while'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the output of the following code?  \nconsole.log(1 + "2" + 3);',
        options: ['6', '123', '15', '3'],
        correctAnswerIndex: 1,
      ),
    ],
    'Java': [
      Question(
        questionText: 'Which keyword is used to declare a class in Java?',
        options: ['class', 'Class', 'className', 'declare'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the size of an int in Java?',
        options: ['8 bits', '16 bits', '32 bits', '64 bits'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Which of the following is NOT a Java access modifier?',
        options: ['public', 'protected', 'private', 'internal'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'What is the default value of a boolean variable in Java?',
        options: ['true', 'false', 'null', '0'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'How can you achieve multiple inheritance in Java?',
        options: [
          'Using multiple "extends" keywords',
          'Using interfaces',
          'Using "multiple" keyword',
          'Java does not support multiple inheritance'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which method is the entry point for a Java program?',
        options: ['start()', 'run()', 'main()', 'execute()'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'What is the output of the following code? \nSystem.out.println("Hello" + 1 + 2);',
        options: ['Hello3', 'Hello12', 'Hello', 'Error'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which exception is thrown when dividing a number by zero in Java?',
        options: [
          'ArithmeticException',
          'NullPointerException',
          'DivideByZeroException',
          'NumberFormatException'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the purpose of the final keyword in Java?',
        options: [
          'To declare a constant',
          'To prevent method override',
          'To prevent inheritance',
          'All of the above'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'What does the String.trim() method do?',
        options: [
          'Removes all spaces from the string',
          'Removes leading and trailing spaces from the string',
          'Converts the string to lowercase',
          'Converts the string to uppercase'
        ],
        correctAnswerIndex: 1,
      ),
    ],
    'C++': [
      Question(
        questionText: 'What is the correct way to declare a constant in C++?',
        options: [
          'constant int x = 10;',
          'const int x = 10;',
          'int const x = 10;',
          'Both 2 and 3'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'Which of the following is used to end a statement in C++?',
        options: ['.', ',', ';', ':'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'What is the size of a double in C++ on most modern systems?',
        options: ['4 bytes', '8 bytes', '16 bytes', 'System-dependent'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What does the new keyword do in C++?',
        options: [
          'Declares a new variable',
          'Allocates memory dynamically',
          'Initializes a variable',
          'Creates a new class'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What will the following code output? \n#include <iosstream> \nusing namespace std; \nint main() {\n  cout << "C++ Quiz" << endl: \n  return 0; \n}',
        options: [
          'C++ Quiz',
          'C++ Quiz\n',
          'C++ Quiz followed by a blank line',
          'Error'
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Which of the following is NOT a valid access specifier in C++?',
        options: ['public', 'private', 'protected', 'global'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'What is the output of the following code? \n#include <iosstream> \nusing namespace std; \nint main() {\n  int x =5; \n  int y = x++; \n  cout << y; \n  return 0; \n}',
        options: ['4', '5', '6', 'Error'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'How do you define a function in C++?',
        options: [
          'function void myFunction();',
          'void myFunction();',
          'void myFunction:();',
          'void myFunction[];'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which operator is used to access members of a class through a pointer?',
        options: ['.', '->', '*', '&'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the purpose of a destructor in C++?',
        options: [
          'To initialize an object',
          'To free resources used by an object',
          'To overload operators',
          'To define a class'
        ],
        correctAnswerIndex: 1,
      ),
    ],
    'C#': [
      Question(
        questionText: 'What is the correct syntax to declare a variable in C#?',
        options: ['var x;', 'int x;', 'x := 0;', 'declare x;'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the default value of an int in C#?',
        options: ['null', '0', 'undefined', 'false'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which keyword is used to define a class in C#?',
        options: ['define', 'class', 'structure', 'type'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following is NOT a valid access modifier in C#?',
        options: ['public', 'protected', 'internal', 'global'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'What is the output of the following code? \nint x = 5; \nx += 3 \nConsole.WriteLine(x);',
        options: ['5', '3', '8', 'Error'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Which data type is used to store a single character in C#?',
        options: ['char', 'string', 'text', 'byte'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the purpose of the using statement in C#?',
        options: [
          'To include namespaces in the program',
          'To declare variables',
          'To perform memory management',
          'To define classes'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the correct way to call a static method in C#?',
        options: [
          'objectName.MethodName();',
          'ClassName.MethodName();',
          'new ClassName().MethodName();',
          'this.MethodName();'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following is used to handle exceptions in C#?',
        options: [
          'if...else',
          'try...catch',
          'error...handle',
          'throw...except'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the output of the following code? \nString name = "John"; \nConsole.WriteLine("\$Hello, {name}!");',
        options: ['Hello, {name}!', 'Hello name!', 'Error', 'Hello, John!'],
        correctAnswerIndex: 3,
      ),
    ],
    'HTML': [
      Question(
        questionText: 'What does HTML stand for?',
        options: [
          'Hyperlinks and Text Markup Language',
          'Home Tool Markup Language',
          'Hyper Text Markup Language',
          'Hyper Tool Markup Language'
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Which HTML tag is used to create a hyperlink?',
        options: ['<link>', '<a>', '<href>', '<hyper>'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the correct HTML element for inserting a line break?',
        options: ['<lb>', '<br>', '<break>', '<newline>'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which tag is used to define a table in HTML?',
        options: ['<table>', '<tbl>', '<t>', '<tab>'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'What is the correct way to create an ordered list in HTML?',
        options: ['<list>', '<ul>', '<ol>', '<order>'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Which attribute specifies an alternative text for an image if the image cannot be displayed?',
        options: ['title', 'alt', 'src', 'description'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'What is the correct HTML element for the largest heading?',
        options: ['<heading>', '<h6>', '<h1>', '<head>'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'How can you make a list that lists items with bullets?',
        options: ['<list>', '<ol>', '<ul>', '<dl>'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Which of the following HTML elements is used to create a form?',
        options: ['<form>', '<input>', '<textarea>', '<button>'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Which attribute is used to specify the URL of the linked page in an <a> tag?',
        options: ['link', 'href', 'src', 'url'],
        correctAnswerIndex: 1,
      ),
    ],
    'CSS': [
      Question(
        questionText: 'What does CSS stand for?',
        options: [
          'Cascading Style Sheets',
          'Computer Style Sheets',
          'Creative Style Sheets',
          'Colorful Style Sheets'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Which HTML tag is used to apply an external CSS file?',
        options: ['<style>', '<css>', '<link>', '<stylesheet>'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'How do you apply a CSS style to a specific element with a unique ID?',
        options: ['.id', '#id', 'id:', '*id'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which property is used to change the background color of an element?',
        options: ['color', 'background', 'bgcolor', 'background-color'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'How do you make text bold in CSS?',
        options: [
          'font-weight: bold;',
          'text-style: bold;',
          'font-style: bold;',
          'text-weight: bold;'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the default position value in CSS?',
        options: ['relative', 'absolute', 'static', 'fixed'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'How do you create a class in CSS?',
        options: ['.classname', 'classname', '#classname', '*classname'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Which CSS property is used to control the space between lines of text?',
        options: ['letter-spacing', 'line-spacing', 'line-height', 'spacing'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'hich property is used to add shadow to a text in CSS?',
        options: ['shadow', 'text-shadow', 'font-shadow', 'box-shadow'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the correct syntax for a media query in CSS?',
        options: [
          '@media screen and (max-width: 600px) { ... }',
          '@screen media (max-width: 600px) { ... }',
          'media-query (max-width: 600px) { ... }',
          '@media (screen-width: 600px) { ... }'
        ],
        correctAnswerIndex: 0,
      ),
    ],
    'PHP': [
      Question(
        questionText: 'What does PHP stand for?',
        options: [
          'Personal Home Page',
          'PHP: Hypertext Preprocessor',
          'Private Home Page',
          'Professional Hypertext Preprocessor'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which symbol is used to declare a variable in PHP?',
        options: ['@', '\$', '#', '%'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the correct way to end a PHP statement?',
        options: ['.', ';', ':', ','],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Which function is used to output text in PHP?',
        options: ['echo', 'print', 'write', 'Both 1 and 2'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'What is the correct way to add a comment in PHP?',
        options: [
          '<!-- comment -->',
          '# comment',
          '// comment',
          'Both 2 and 3'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'What is the correct way to include a file in PHP?',
        options: [
          'include "file.php";',
          'add "file.php";',
          'require "file.php";',
          'Both 1 and 3'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'Which of the following is used to connect to a MySQL database in PHP?',
        options: [
          'connect_db()',
          'mysqli_connect()',
          'db_connect()',
          'mysql_link()'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'How do you define a constant in PHP?',
        options: [
          'const NAME = "value";',
          'define("NAME", "value");',
          '\$NAME = "value";',
          'Both 1 and 2'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'What is the output of the following code? \n\$x = 10; \n\$y = "10"; \nvar_dump(\$x == \$y);',
        options: ['true', 'false', 'null', 'error'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Which superglobal array is used to retrieve data from a form submitted via POST method?',
        options: ['\$_GET', '\$_POST', '\$_REQUEST', '\$_FORM'],
        correctAnswerIndex: 1,
      ),
    ],
    'Kotlin': [
      Question(
        questionText: 'What type of programming language is Kotlin?',
        options: [
          'Procedural',
          'Functional',
          'Object-Oriented',
          'Both 2 and 3'
        ],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'How do you define a variable in Kotlin that cannot be reassigned?',
        options: ['var', 'const', 'let', 'val'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: 'What is the entry point of a Kotlin application?',
        options: ['main()', 'start()', 'launch()', 'run()'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the correct syntax for a function in Kotlin?',
        options: [
          'function name() {}',
          'fun name() {}',
          'def name() {}',
          'func name() {}'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following is used to declare a nullable variable in Kotlin?',
        options: ['var x: Int*', 'var x: Int?', 'var x: Int!', 'var x: Int@'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the purpose of the when expression in Kotlin?',
        options: [
          'It replaces if-else statements',
          'It replaces switch statements',
          'It replaces for loops',
          'Both 1 and 2'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'How do you check the type of a variable in Kotlin?',
        options: ['is', 'typeof', 'instanceof', 'check'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Which keyword is used to create a class in Kotlin?',
        options: ['class', 'object', 'data', 'type'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'What is the correct way to create a list in Kotlin?',
        options: [
          'val list = listOf(1, 2, 3)',
          'val list = arrayOf(1, 2, 3)',
          'val list = [1, 2, 3]',
          'val list = createList(1, 2, 3)'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'How do you handle null safety in Kotlin?',
        options: [
          'Use try...catch',
          'Use the ? operator',
          'Use the !! operator',
          'Both 2 and 3'
        ],
        correctAnswerIndex: 3,
      ),
    ],
    'SQL': [
      Question(
        questionText:
            'Which SQL statement is used to extract data from a database?',
        options: ['SELECT', 'GET', 'FETCH', 'RETRIEVE'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Which SQL clause is used to filter records?',
        options: ['WHERE', 'ORDER BY', 'HAVING', 'GROUP BY'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Which of the following is the correct syntax to create a table in SQL?',
        options: [
          'CREATE TABLE table_name (column1 datatype, column2 datatype, ...);',
          'NEW TABLE table_name (column1 datatype, column2 datatype, ...);',
          'INSERT TABLE table_name (column1 datatype, column2 datatype, ...);',
          'DEFINE TABLE table_name (column1 datatype, column2 datatype, ...);'
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Which SQL keyword is used to sort the result set in ascending or descending order?',
        options: ['SORT BY', 'ORDER BY', 'FILTER BY', 'GROUP BY'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What does SQL stand for?',
        options: [
          'Standard Query Language',
          'Structured Query Language',
          'Simple Query Language',
          'Sequential Query Language'
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which SQL statement is used to update data in a database?',
        options: ['MODIFY', 'UPDATE', 'SET', 'ALTER'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which of the following SQL operators is used to combine the results of two or more SELECT statements?',
        options: ['INTER JOIN', 'UNION', 'MERGE', 'COMBINE'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Which SQL function is used to count the number of rows in a table?',
        options: ['NUM()', 'COUNT()', 'TOTAL()', 'SUM()'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'What is the default value of the NULL condition in SQL?',
        options: ['TRUE', 'FALSE', 'UNDEFINED', 'UNKNOWN'],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText:
            'Which SQL statement is used to remove a table from a database?',
        options: [
          'DELETE TABLE',
          'REMOVE TABLE',
          'DROP TABLE',
          'REMOVE TABLE IF EXISTS'
        ],
        correctAnswerIndex: 2,
      ),
    ],
  };
}
