import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.imgUrl, required this.title, required this.desc});
  final String imgUrl;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
            children: [
              Image.network(imgUrl),
              SizedBox(height: 10,),
              Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(desc),
          ],
        ),
      ),
    ) ;
  }
}
