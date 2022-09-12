import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/news_model.dart';

class NewsApiService {
  static Future<List<Articles>> fetchNewsData(
      {required int page, required String sortBy}) async {
    List<Articles> newsList = [];

    try {
      var link =
          "https://newsapi.org/v2/everything?q=soccer&apiKey=fb24c358fc5d4095b297daa5a7a6c41f&pageSize=10&page=$page&sortBy=$sortBy";
      var response = await http.get(Uri.parse(
        link,
      ));
      print('response is ${response.body}');
      var data = jsonDecode(response.body);
      Articles articles;
      for (var i in data['articles']) {
        articles = Articles.fromJson(i);
        newsList.add(articles);
      }
    } catch (e) {
      print('the problem is $e');
    }
    return newsList;
  }
}
