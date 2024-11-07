class NewsModel {
  NewsModel({
      this.articles,});

  NewsModel.fromJson(dynamic json) {
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }
  List<Articles>? articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (articles != null) {
      map['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
class Articles {
  Articles({
      this.title, 
      this.description, 
      this.urlToImage,});

  Articles.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
  }
  String? title;
  String? description;
  String? urlToImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['urlToImage'] = urlToImage;
    return map;
  }

}