
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
  bool isLoading = true;
  bool isOffline = false;

  @override
  void initState() {
    super.initState();
    _loadBookmarkedArticles();
  }

  Future<void> _loadBookmarkedArticles() async {
    try {
      // Listen for changes in the bookmarks node
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
            isLoading = false;
            isOffline = false; // Assume online if data is received
          });
        } else {
          setState(() {
            bookmarkedArticles.clear();
            articleKeys.clear();
            isLoading = false;
          });
        }
      }, onError: (error) {
        // Handle errors, possibly due to being offline
        setState(() {
          isLoading = false;
          isOffline = true;
        });
        print('Error loading bookmarks: $error');
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        isOffline = true;
      });
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
          SnackBar(
            content: const Text('Bookmark removed successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      print('Error removing bookmark: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Failed to remove bookmark'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookmarked Articles',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : isOffline && bookmarkedArticles.isEmpty
          ? const Center(
        child: Text(
          'No bookmarked articles available offline.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      )
          : bookmarkedArticles.isEmpty
          ? const Center(
        child: Text(
          'No bookmarked articles.',
          style: TextStyle(fontSize: 18),
        ),
      )
          : Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: Theme.of(context).brightness == Brightness.dark
                ? [Colors.grey[850]!, Colors.grey[800]!]
                : [const Color(0xFFDCC00A), const Color(0xFF96FF61)],
          ),
        ),
        child: ListView.builder(
          itemCount: bookmarkedArticles.length,
          itemBuilder: (context, index) {
            final article = bookmarkedArticles[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  article.title,
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color, // Updated
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  article.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium, // Updated
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
      ),
    );
  }
}
