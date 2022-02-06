import 'package:flutter/material.dart';

class NewsCards extends StatelessWidget {
  final String title;
  final String description;
  final String content;
  final url;

  NewsCards(
      {required this.title, required this.description, required this.content,required this.url});

  @override
  Widget build(BuildContext context) {
   
   

    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shadowColor: Colors.black,
        elevation: 6,
        child: Column(
          children: [
          Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 200,
            child: Image.network(url),
          ),
          Text(content,style: TextStyle(fontSize: 17),),
        ],),
      ),
    );
  }
}
