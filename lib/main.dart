import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'HomePage/Homepage.dart';
import 'Providers/ThemeProvider.dart';
import 'categories.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeprovider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.cyan,
            titleTextStyle: TextStyle(
                color: Colors.black
            ),
            iconTheme: IconThemeData(
                color: Colors.black
            )
        ),
        colorScheme:
        ColorScheme.fromSeed(
            seedColor: Colors.black,
            secondaryContainer: Colors.black,
            primary: Colors.white,
            secondary: Colors.black
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor:Color(0xff1a1a1a),
        bottomSheetTheme: BottomSheetThemeData(


        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
        colorScheme:
        ColorScheme.fromSeed(
            seedColor: Colors.black,
          secondaryContainer: Colors.black,
          primary: Color(0xff4a4a4a),
          secondary: Colors.white
        ),
        useMaterial3: true,
      ),
      themeMode: themeprovider.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: 'CategoriesPage', // Set the default route
      routes: {
        'homepage': (context) => const MyHomePage(title: 'News'),
        'CategoriesPage': (context) => CategoriesPage(),

      },
    );
  }
}
