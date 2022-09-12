import 'package:flutter/cupertino.dart';
import 'package:news_app/Model/news_model.dart';
import 'package:news_app/Service/news_api.dart';
import 'package:provider/provider.dart';

class NewsProvider with ChangeNotifier {
  List<Articles> newsList = [];

  Future<List<Articles>> getNewsData(
      {required int page, required String sortBy}) async {
    newsList = await NewsApiService.fetchNewsData(page: page, sortBy: sortBy);
    return newsList;
  }

  Articles findByDate({String? date}) {
    Articles data =
        newsList.firstWhere((element) => element.publishedAt == date);
    return data;
  }
}
