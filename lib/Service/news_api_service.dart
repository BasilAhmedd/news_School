import 'package:dio/dio.dart';
import 'package:news_app/Model/NewsModel.dart';

class NewsApiService{
 static Dio dio = Dio();
 static const String ApiKey = "apiKey=25f7cd4776214267a1925c5aee3eff97";
 static const String baseUrl = "https://newsapi.org";
 static Future<NewsModel> getData()async{
   String Api =
       "https://newsapi.org/v2/top-headlines?sources=bbc-sport&apiKey=25f7cd4776214267a1925c5aee3eff97";
   var response  = await dio.get(Api);
   if(response.statusCode==200){
     return NewsModel.fromJson(response.data);
   }else{
     throw Exception("Failed to get data");
   }
 }
}

// https://newsapi.org/v2/top-headlines/sources?apiKey=25f7cd4776214267a1925c5aee3eff97&category=sports