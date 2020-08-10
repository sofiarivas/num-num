import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:num_num/recipe.dart';

class RecipesList extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe('Brownies'),
    Recipe('Fruit Salad'),
    Recipe('Apple pie'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // How many items to render
        itemCount: recipes.length,
        // Functions that accepts an index and renders a task
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].getDescription()),
          );
        });
  }
}
