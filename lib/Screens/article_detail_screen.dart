import 'package:flutter/material.dart';
import '../Models/article.dart';





class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  ArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Article Overview',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(article.image),
              SizedBox(height: 16),
              Text(article.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              // SizedBox(height: 16),
              // Text(article.description),
              SizedBox(height: 16),
              Text(article.content),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}


