import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:num_num/recipe.dart';
import 'package:num_num/components/recipe_card.dart';
import 'package:num_num/components/hero_section.dart';

class TodaysRecipes extends StatefulWidget {
  TodaysRecipes({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TodaysRecipesState createState() => _TodaysRecipesState();
}

class _TodaysRecipesState extends State<TodaysRecipes> {
  final List<Recipe> recipes = [
    Recipe('Do homework'),
    Recipe('Laundry'),
    Recipe('Finish this tutorial')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HeroSection(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Latest Recipes',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  FlatButton(
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "See all >",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Theme.of(context).accentColor),
                    ),
                  ),
                ],
              ),
              Container(
                height: 290.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RecipeCard(),
                    RecipeCard(),
                    RecipeCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
