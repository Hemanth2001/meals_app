import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widgets/meal_item.dart';
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
        return MealItem(id: categoryMeals[index].id ,title: categoryMeals[index]
            .title,
            imageUrl:
        categoryMeals[index].imageUrl, duration:  categoryMeals[index].duration, complexity:  categoryMeals[index].complexity, affordability:  categoryMeals[index].affordability);


      },
        itemCount: categoryMeals.length,

     ),

    );
  }
}
