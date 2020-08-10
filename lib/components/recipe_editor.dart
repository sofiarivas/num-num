import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeEditor extends StatelessWidget {
  const RecipeEditor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
      children: <Widget>[
        Container(
          child: Text('Add your own recipe:',
              style: Theme.of(context).textTheme.subtitle1),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          maxLines: 10,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          splashColor: Theme.of(context).splashColor,
          child: const Text('Save',
              style: TextStyle(fontSize: 16.0, fontFamily: 'Roboto Condensed')),
        ),
      ],
    );
  }
}
