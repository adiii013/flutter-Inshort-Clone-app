import 'dart:convert';
import './newscard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String categoryTitle = routeArgs['title'].toString();
    String id = routeArgs['id'].toString();

    Future<List<dynamic>> getData() async {
      http.Response response;
      response = await http.get(Uri.parse(
          'https://saurav.tech/NewsAPI/top-headlines/category/${id}/in.json'));

      return jsonDecode(response.body)['articles'];
    }
  
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    String author = snapshot.data![index]['urlToImage'];
                    return NewsCards();
                  },
                ),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
