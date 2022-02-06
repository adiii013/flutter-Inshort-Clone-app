import 'package:flutter/material.dart';
import 'package:new_app/component/categoryscreen.dart';
import './component/newsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  CategoryScreen(),
      routes: {
        '/newsscreen':(ctx)=>NewsScreen(),
      },
    );
  }
}


