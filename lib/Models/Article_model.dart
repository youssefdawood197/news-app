import 'package:flutter/foundation.dart';

class Article {
  String? title;
  String? description;
  String? url;
  String? urlToImage;

  Article({this.title, this.description, this.url, this.urlToImage});

  factory Article.fromJson(Map<String, dynamic> jsonData){
    return Article(
      title: jsonData['title'],
      description: jsonData['description'],
      url: jsonData['url'],
      urlToImage: jsonData['urlToImage']
    );
  }
}
