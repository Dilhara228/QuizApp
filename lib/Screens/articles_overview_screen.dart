import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_database/firebase_database.dart';
import '../Models/article.dart';
import '../Models/article_details.dart';

class ArticlesOverviewScreen extends StatefulWidget {
  final String language;

  const ArticlesOverviewScreen({super.key, required this.language});

  @override
  State<ArticlesOverviewScreen> createState() => _ArticlesOverviewScreenState();
}

class _ArticlesOverviewScreenState extends State<ArticlesOverviewScreen> {
  final DatabaseReference _bookmarksRef =
      FirebaseDatabase.instance.ref().child('bookmarks');
  Map<String, bool> bookmarkedArticles = {};

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    try {
      _bookmarksRef.onValue.listen((event) {
        if (event.snapshot.value != null) {
          final dynamic values = event.snapshot.value;
          if (values is Map) {
            setState(() {
              bookmarkedArticles = values.map((key, value) {
                return MapEntry(
                  value['title'] as String,
                  value['isBookmarked'] as bool,
                );
              });
            });
          }
        } else {
          setState(() {
            bookmarkedArticles.clear();
          });
        }
      });
    } catch (e) {
      print('Error loading bookmarks: $e');
    }
  }

  Future<void> _toggleBookmark(Article article) async {
    final String bookmarkKey =
        article.title.replaceAll('.', '_').replaceAll(' ', '_');
    final bool newBookmarkState = !(bookmarkedArticles[article.title] ?? false);

    try {
      setState(() {
        bookmarkedArticles[article.title] = newBookmarkState;
      });

      // Save to Firebase
      await _bookmarksRef.child(bookmarkKey).set({
        'title': article.title,
        'description': article.description,
        'image': article.image,
        'language': widget.language,
        'isBookmarked': newBookmarkState,
        'timestamp': ServerValue.timestamp,
      });

      Fluttertoast.showToast(
        msg: newBookmarkState
            ? 'Article saved to bookmarks!'
            : 'Article removed from bookmarks!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    } catch (e) {
      print('Error toggling bookmark: $e');
      setState(() {
        bookmarkedArticles[article.title] = !newBookmarkState;
      });
      Fluttertoast.showToast(
        msg: 'Failed to update bookmark',
        backgroundColor: Colors.red,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Article> articles = List<Article>.from(
      ArticleDetails.articlesByLanguage[widget.language] ?? [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.language} Articles'),
      ),
      body: articles.isEmpty
          ? const Center(
              child: Text('No articles available for this language.'))
          : ListView.separated(
              itemCount: articles.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return _buildArticleCard(articles[index]);
              },
            ),
    );
  }

  Widget _buildArticleCard(Article article) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(article.title),
        subtitle: Text(
          article.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: Icon(
            bookmarkedArticles[article.title] ?? false
                ? Icons.bookmark
                : Icons.bookmark_border,
            color: bookmarkedArticles[article.title] ?? false
                ? Colors.yellow
                : Colors.grey,
          ),
          onPressed: () => _toggleBookmark(article),
        ),
      ),
    );
  }
}
