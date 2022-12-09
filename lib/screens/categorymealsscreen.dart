import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
class CategoryMealsScreen extends StatelessWidget {

  final String categoryID;
  final String categoryTitle;

  CategoryMealsScreen (this.categoryID, this.categoryTitle);


  @override
  Widget build(BuildContext context) {
    final categoryMeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryID);
    }).toList();



    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:
      ListView.builder(itemBuilder: (ctx, index) {
        return Text(categoryMeals[index].title);


      },
        itemCount: categoryMeals.length,

     ),

    );
  }
}
