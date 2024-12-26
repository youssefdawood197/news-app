import 'package:flutter/material.dart';

import 'HomePage/Homepage.dart';

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
      initialRoute: 'homepage', // Set the default route
      routes: {
        'homepage': (context) => const MyHomePage(title: 'News'),
      },
    );
  }
}
