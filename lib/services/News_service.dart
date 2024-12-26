import 'dart:convert';
import 'package:news_app/Models/Article_model.dart';
import 'package:http/http.dart' as http;

import '../Models/Articles.dart';

class NewsApi {
  final String apiKey = '4a3b0651a7b84dbba4fe517a4348993d';

  Future<List<Article>> fetchArticles() async {
    try {
      final uri = Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey');
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final articles = Articles.fromJson(jsonData);
        final List<Article> articleList = articles.articles.map((e) => Article.fromJson(e)).toList();
        return articleList;
      } else {
        print('HTTP Error: ${response.statusCode}');
        return []; // Return an empty list if the response is unsuccessful
      }
    } catch (e) {
      print('Exception: $e');
      return []; // Return an empty list in case of an exception
    }
  }
}