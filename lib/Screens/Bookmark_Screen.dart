import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import '../Models/article.dart';
import 'article_detail_screen.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  final DatabaseReference _bookmarksRef =
      FirebaseDatabase.instance.ref().child('bookmarks');
  List<Article> bookmarkedArticles = [];
  Map<String, String> articleKeys = {}; 

  @override
  void initState() {
    super.initState();
    _loadBookmarkedArticles();
  }

  Future<void> _loadBookmarkedArticles() async {
    try {
      _bookmarksRef.onValue.listen((event) {
        final dynamic data = event.snapshot.value;
        if (data is Map) {
          setState(() {
            bookmarkedArticles = [];
            articleKeys = {};
            data.forEach((key, value) {
              if (value is Map && value['isBookmarked'] == true) {
                bookmarkedArticles.add(Article(
                  title: value['title'] ?? '',
                  description: value['description'] ?? '',
                  image: value['image'] ?? '',
                ));
                articleKeys[value['title'] ?? ''] = key; 
              }
            });
          });
        } else {
          setState(() {
            bookmarkedArticles.clear();
            articleKeys.clear();
          });
        }
      });
    } catch (e) {
      print('Error loading bookmarks: $e');
    }
  }

  Future<void> _removeBookmark(String title) async {
    try {
      final String? articleKey = articleKeys[title];
      if (articleKey != null) {
        await _bookmarksRef.child(articleKey).remove();
        setState(() {
          bookmarkedArticles.removeWhere((article) => article.title == title);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Bookmark removed successfully')),
        );
      }
    } catch (e) {
      print('Error removing bookmark: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to remove bookmark')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarked Articles'),
      ),
      body: bookmarkedArticles.isEmpty
          ? const Center(child: Text('No bookmarked articles.'))
          : ListView.builder(
              itemCount: bookmarkedArticles.length,
              itemBuilder: (context, index) {
                final article = bookmarkedArticles[index];
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
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () => _removeBookmark(article.title),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ArticleDetailScreen(article: article),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
