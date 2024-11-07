import 'package:flutter/material.dart';
import 'package:news_app/Model/NewsModel.dart';
import 'package:news_app/Service/news_api_service.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? newsModel;

  Future<void> fetchNewsData()async{
    newsModel = await NewsApiService.getData();
    notifyListeners();
  }
}