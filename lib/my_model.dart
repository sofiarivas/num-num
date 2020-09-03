import 'package:flutter/material.dart';
import 'package:num_num/recipe.dart';

class MyModel with ChangeNotifier {
  int selectedView = 0;

  List<Recipe> myRecipes = [
    Recipe('Apple crumble pie',
        'Apple crisp is a dessert made with a topping of a mixture of brown sugar, flour, and butter. An apple crumble is a dessert of baked chopped apples topped with rolled oats and brown sugar.'),
    Recipe('Summer Fruit Salad', 'some instructions!!'),
  ];

  void addRecipe(String title, String description) {
    myRecipes.add(Recipe(title, description));
    selectedView = 1;

    print(myRecipes[0].getName());
    notifyListeners();
  }

  void changeView(int index) {
    print(index);
    selectedView = index;
    print(selectedView);
  }
}
