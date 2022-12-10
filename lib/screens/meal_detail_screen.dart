import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget{

final String id;
  MealDetailScreen ( this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),

      body: Center(
        child: Container(
          child: Text(id),
        ),
      ),
    );
  }
}
