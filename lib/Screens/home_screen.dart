import 'package:flutter/material.dart';
import 'package:programming_quiz/Directory/theme_notifier.dart';
import 'package:provider/provider.dart'; // Added import
import 'package:programming_quiz/Models/quiz_data.dart';
import 'package:programming_quiz/Screens/Bookmark_Screen.dart';
import 'package:programming_quiz/Screens/articles_overview_screen.dart';
import 'package:programming_quiz/Screens/quiz_screen.dart';
import 'package:programming_quiz/Screens/select_language_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // To manage Bottom Navigation Bar state

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    bool isDarkMode = themeNotifier.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Programming Quiz',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDarkMode
                ? [Colors.grey[850]!, Colors.grey[800]!]
                : [const Color(0xFFDCC00A), const Color(0xFF96FF61)],
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
        backgroundColor: Theme.of(context).cardColor,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Theme.of(context).iconTheme.color,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectLanguageScreen(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookmarkScreen()),
            );
          } else if (index == 3) {
            themeNotifier.toggleTheme(); // Toggle the theme
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Articles',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dark_mode,
              color: isDarkMode ? Colors.red : Colors.black87,
            ),
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
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black54
                  : Colors.black26,
              blurRadius: 5,
              offset: const Offset(0, 3),
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
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[700]
                    : const Color(0xFFEEEEEE),
                borderRadius: const BorderRadius.only(
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
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium?.color, // Updated
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
