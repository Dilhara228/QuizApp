// article_detail_screen.dart
import 'package:flutter/material.dart';
import '../Models/article.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailScreen({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Article Overview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                article.description,
                style: Theme.of(context).textTheme.bodyMedium, // Updated
              ),
              const SizedBox(height: 16),
              // You can add more themed widgets here if needed
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
