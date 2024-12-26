import 'package:flutter/material.dart';

import 'CustomWidgets/CategoryBox.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'title': 'Business',
        'imageUrl':
            'https://img.freepik.com/free-photo/index-finger-touching-graph-with-red-arrow_1232-159.jpg?semt=ais_hybrid'
      },
      {
        'title': 'Entertainment',
        'imageUrl':
            'https://img.freepik.com/free-photo/person-close-up-recording-video-with-smartphone-concert_1153-7416.jpg?t=st=1735220408~exp=1735224008~hmac=10a3c72e09c98b1fbf50456a014ac6a8a0401240f0da3a37ddbed1d7c3c8096e&w=2000'
      },
      {
        'title': 'General',
        'imageUrl':
            'https://img.freepik.com/free-vector/hand-drawn-news-studio-background_23-2149968765.jpg?semt=ais_hybrid'
      },
      {
        'title': 'Health',
        'imageUrl':
            'https://img.freepik.com/premium-photo/businessman-hold-virtual-plus-medical-network-connection-icons-covid-19-pandemic-develop-people-awareness-spread-attention-their-healthcare-doctor-document-medicine-ambulance-patient-icon_150455-12364.jpg?semt=ais_hybrid'
      },
      {
        'title': 'Science',
        'imageUrl':
            'https://img.freepik.com/free-psd/science-design-template_23-2150882094.jpg?t=st=1735220547~exp=1735224147~hmac=66ada30b3fb8deedec7d4a8bbdf90e512123cc0beb79cca4d7b1f9596e931601&w=2000'
      },
      {
        'title': 'Sports',
        'imageUrl':
            'https://img.freepik.com/premium-vector/gradient-sports-news-background_23-2151403833.jpg?semt=ais_hybrid'
      },
      {
        'title': 'Technology',
        'imageUrl':
            'https://img.freepik.com/free-photo/ai-nuclear-energy-background-future-innovation-disruptive-technology_53876-129783.jpg?semt=ais_hybrid'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily:
                'Roboto', // Update to any font available in your project
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true, // Centers the title in the app bar
        elevation: 4,
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
