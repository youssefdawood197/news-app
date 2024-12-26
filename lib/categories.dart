import 'package:flutter/material.dart';

import 'CustomWidgets/CategoryBox.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with corresponding images
    final List<Map<String, String>> categories = [
      {'title': 'Business', 'imageUrl': 'https://via.placeholder.com/400?text=Business'},
      {'title': 'Entertainment', 'imageUrl': 'https://via.placeholder.com/400?text=Entertainment'},
      {'title': 'General', 'imageUrl': 'https://via.placeholder.com/400?text=General'},
      {'title': 'Health', 'imageUrl': 'https://via.placeholder.com/400?text=Health'},
      {'title': 'Science', 'imageUrl': 'https://via.placeholder.com/400?text=Science'},
      {'title': 'Sports', 'imageUrl': 'https://via.placeholder.com/400?text=Sports'},
      {'title': 'Technology', 'imageUrl': 'https://via.placeholder.com/400?text=Technology'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryBox(
            title: category['title']!,
            imageUrl: category['imageUrl']!,
          );
        },
      ),
    );
  }
}