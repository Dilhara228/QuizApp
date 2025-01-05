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
    final List<Article> articles = List<Article>.from(
      ArticleDetails.articlesByLanguage[widget.language] ?? [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.language} Articles',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        child: articles.isEmpty
            ? const Center(
          child: Text(
            'No articles available for this language.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
            : ListView.separated(
          itemCount: articles.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return _buildArticleCard(articles[index], index);
          },
        ),
      ),
    );
  }

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

  void _toggleBookmark(int index) {
    setState(() {
      bookmarkedArticles[index] = !(bookmarkedArticles[index] ?? false);
    });

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
