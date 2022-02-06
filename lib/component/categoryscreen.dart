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
    CategoriesDisplay('entertainment', 'Entertainment',Colors.amber),
    CategoriesDisplay('general', 'General',Colors.amber),
    CategoriesDisplay('health', 'Health',Colors.amber),
    CategoriesDisplay('science', 'Science',Colors.amber),
    CategoriesDisplay('technology', 'Technology',Colors.amber),
    CategoriesDisplay('sports', 'Sports',Colors.amber),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catogories"),
      ),
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