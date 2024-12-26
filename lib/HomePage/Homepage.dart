import 'package:flutter/material.dart';
import '../CustomWidgets/NewsCard.dart';
import '../Models/Article_model.dart';
import '../services/News_service.dart'; // Update with the correct path to your NewsApi class

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Article>> articlesFuture;

  @override
  void initState() {
    super.initState();
    articlesFuture = NewsApi(title: widget.title).fetchArticles(); // Properly initialize the future
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto', // Update to any font available in your project
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true, // Centers the title in the app bar
        elevation: 4, // Adds slight shadow
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                articlesFuture = NewsApi(title: widget.title).fetchArticles(); // Refresh articles
              });
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Article>>(
        future: articlesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No articles available'),
            );
          } else {
            final articles = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return NewsCard(
                  imageUrl: article.urlToImage ?? 'https://via.placeholder.com/200',
                  title: article.title ?? 'No title available',
                  description: article.description ?? 'No description available',
                );
              },
            );
          }
        },
      ),
    );
  }
}