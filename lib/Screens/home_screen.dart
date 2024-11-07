import 'package:flutter/material.dart';
import 'package:news_app/Provider/news_provider.dart';
import 'package:news_app/Widgets/custom_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<NewsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("News"),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider>(
        builder: (context, value, child) {
          final data = value.newsModel?.articles;
          if (data == null) {
            value.fetchNewsData();
            return Center(child: CircularProgressIndicator());
          }
          else {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final news = data[index];
                return CustomWidget(
                    imgUrl: news.urlToImage.toString(),
                    title: news.title.toString(),
                    desc: news.description.toString());
              },
            );
          }
        },
      ),
    );
  }
}
