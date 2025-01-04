import 'package:flutter/material.dart';
import 'articles_overview_screen.dart';

class SelectLanguageScreen extends StatefulWidget {
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
    {"name": "SQL Server", "image": "assets/images/sql.png"},
    {"name": "Python", "image": "assets/images/python.png"},
    {"name": "JavaScript", "image": "assets/images/javascript.png"},
  ];

  int _currentIndex = 1; // Default to "Articles" tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programming Languages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4.0,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                leading: Image.asset(
                  languages[index]['image'],
                  width: 30.0,
                  height: 30.0,
                ),
                title: Text(
                  languages[index]['name'],
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ArticlesOverviewScreen(language: languages[index]['name']),
                    ),
                  );
                },
              ),
            );
          },
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
                builder: (context) => SelectLanguageScreen(),
              ),
            );
          }
          setState(() {
            _currentIndex = index;
          });
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
}
