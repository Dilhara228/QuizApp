import 'package:flutter/material.dart';
import 'package:programming_quiz/Screens/Bookmark_Screen.dart';
import 'articles_overview_screen.dart';
import 'package:programming_quiz/Screens/home_screen.dart';




class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  _SelectLanguageScreenState createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  final List<Map<String, dynamic>> languages = [
    {"name": "Java", "image": "assets/images/java.png"},
    {"name": "C++", "image": "assets/images/cpp.png"},
    {"name": "C#", "image": "assets/images/csharp.png"},
    {"name": "HTML", "image": "assets/images/html.png"},
    {"name": "CSS", "image": "assets/images/css.png"},
    {"name": "PHP", "image": "assets/images/php.png"},
    {"name": "Kotlin", "image": "assets/images/kotlin.png"},
    {"name": "SQL", "image": "assets/images/sql.png"}, // Changed "SQL Server" to "SQL" to match other parts
    {"name": "Python", "image": "assets/images/python.png"},
    {"name": "JavaScript", "image": "assets/images/javascript.png"},
  ];

  int _currentIndex = 1; // Default to "Articles" tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Programming Languages',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: Theme.of(context).brightness == Brightness.dark
                ? [Colors.grey[900]!, Colors.grey[800]!]
                : [Color(0xFFDCC00A), Color(0xFF96FF61)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4.0,
                color: Theme.of(context).cardColor,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  leading: Image.asset(
                    languages[index]['image'],
                    width: 30.0,
                    height: 30.0,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : null,
                  ),
                  title: Text(
                    languages[index]['name'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticlesOverviewScreen(
                          language: languages[index]['name'],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      )
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
