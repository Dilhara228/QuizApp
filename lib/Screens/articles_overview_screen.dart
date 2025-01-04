import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../Models/article.dart';
import '../Models/article_details.dart';
import 'article_detail_screen.dart';

class ArticlesOverviewScreen extends StatefulWidget {
  final String language;

  const ArticlesOverviewScreen({super.key, required this.language});

  @override
  State<ArticlesOverviewScreen> createState() => _ArticlesOverviewScreenState();
}

class _ArticlesOverviewScreenState extends State<ArticlesOverviewScreen> {

  Map<int, bool> bookmarkedArticles = {};

  @override
  Widget build(BuildContext context) {

    final List<Article> articles = List<Article>.from(ArticleDetails.articlesByLanguage[widget.language] ?? [],);

    return Scaffold(
      appBar: AppBar(title: Text('${widget.language} Articles')),
      body: articles.isEmpty
          ? const Center(child: Text('No articles available for this language.'))
          : ListView.separated(
        itemCount: articles.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return _buildArticleCard(articles[index], index);
        },
      ),
    );
  }

  // Extracted method for creating article list tile
  Widget _buildArticleCard(Article article, int index) {
    return Card(
      child: ListTile(
        title: Text(article.title),
        subtitle: Text(article.description),
        trailing: IconButton(
          icon: Icon(
            bookmarkedArticles[index] ?? false
                ? Icons.bookmark
                : Icons.bookmark_border,
            color: bookmarkedArticles[index] ?? false
                ? Colors.yellow
                : Colors.grey,
          ),
          onPressed: () {
            _toggleBookmark(index);
          },
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetailScreen(article: article),
            ),
          );
        },
      ),
    );
  }

  // Method to toggle bookmark and show toast
  void _toggleBookmark(int index) {
    setState(() {
      bookmarkedArticles[index] = !(bookmarkedArticles[index] ?? false);
    });

    // Show toast when an article is bookmarked or unbookmarked
    Fluttertoast.showToast(
      msg: bookmarkedArticles[index] == true
          ? 'Article added to favorites!'
          : 'Article removed from favorites!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}



