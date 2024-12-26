import 'package:flutter/material.dart';

import 'HomePage/Homepage.dart';
import 'categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'CategoriesPage', // Set the default route
      routes: {
        'homepage': (context) => const MyHomePage(title: 'News'),
        'CategoriesPage': (context) => CategoriesPage(),

      },
    );
  }
}
