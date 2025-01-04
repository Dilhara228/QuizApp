import 'package:flutter/material.dart';
import 'package:programming_quiz/Models/quiz_data.dart';
import 'package:programming_quiz/Screens/Bookmark_Screen.dart';
import 'package:programming_quiz/Screens/articles_overview_screen.dart';
import 'package:programming_quiz/Screens/quiz_screen.dart';
import 'package:programming_quiz/Screens/select_language_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // To manage Bottom Navigation Bar state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDCC00A),
        title: const Text(
          'Programming Quiz',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDCC00A),
              Color(0xFF96FF61),
            ],
          ),
        ),
        child: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: _languages.length,
            itemBuilder: (context, index) {
              return _buildLanguageBox(
                _languages[index]['image'] as String,
                _languages[index]['name'] as String,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFFFFF),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SelectLanguageScreen(), // Replace with your ArticlesOverviewScreen widget
              ),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookmarkScreen()),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dark_mode),
            label: 'Dark Mode',
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageBox(String imagePath, String languageName) {
    return GestureDetector(
      onTap: () {
        // Get questions for selected language
        final questions = QuizData.quizzesByLanguage[languageName] ?? [];
        if (questions.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizScreen(
                language: languageName,
                questions: questions,
              ),
            ),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image Section
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Text Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  languageName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> _languages = [
  {'name': 'Python', 'image': 'assets/images/python.png'},
  {'name': 'JavaScript', 'image': 'assets/images/javascript.png'},
  {'name': 'Java', 'image': 'assets/images/java.png'},
  {'name': 'C++', 'image': 'assets/images/cpp.png'},
  {'name': 'C#', 'image': 'assets/images/csharp.png'},
  {'name': 'HTML', 'image': 'assets/images/html.png'},
  {'name': 'CSS', 'image': 'assets/images/css.png'},
  {'name': 'PHP', 'image': 'assets/images/php.png'},
  {'name': 'Kotlin', 'image': 'assets/images/kotlin.png'},
  {'name': 'SQL', 'image': 'assets/images/sql.png'},
];
