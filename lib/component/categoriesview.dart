import 'package:flutter/material.dart';

class CategoriesView extends StatefulWidget {
  final String title;
  final Color color;
  final String id;

  CategoriesView(this.id, this.title, this.color);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    void selectCategory(BuildContext ctx) {
      Navigator.of(ctx).pushNamed('/newsscreen',arguments: {'id':widget.id,'title':widget.title});
    }

    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Text(widget.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.color.withOpacity(0.7), widget.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
