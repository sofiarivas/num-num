import 'package:flutter/material.dart';
import 'package:num_num/components/recipe_editor.dart';
import 'package:num_num/view/todays_recipes.dart';
import 'package:num_num/view/recipes_list.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    TodaysRecipes(),
    RecipesList(),
    RecipeEditor()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Todays',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Recipe Book',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            title: Text('Add recipe',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
        ],
      ),
    );
  }
}
