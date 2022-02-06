import 'package:flutter/material.dart';
import '../body/categories.dart';
import './categoriesview.dart';

class CategoryScreen extends StatefulWidget {

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
   List<CategoriesDisplay> category = [
    CategoriesDisplay('business', 'Business',Colors.amber),
    CategoriesDisplay('entertainment', 'Entertainment',Colors.green),
    CategoriesDisplay('general', 'General',Colors.pink),
    CategoriesDisplay('health', 'Health',Colors.red),
    CategoriesDisplay('science', 'Science',Colors.yellow),
    CategoriesDisplay('sports', 'Sports',Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catogories"),
      ),
      backgroundColor: Colors.purple.shade500.withOpacity(0.7),
      body: GridView(
        padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
        children: category.map((e) => CategoriesView(e.id, e.name, e.color)).toList(),
      )
    );
  }
}