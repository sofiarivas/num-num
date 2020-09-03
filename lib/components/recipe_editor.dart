import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:num_num/my_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final firestoreInstance = Firestore.instance;

class RecipeEditor extends StatefulWidget {
  final onCreate;

  RecipeEditor({@required this.onCreate});

  @override
  State<StatefulWidget> createState() {
    return RecipeEditorCreateState();
  }
}

class RecipeEditorCreateState extends State<RecipeEditor> {
  // Controller that handles the TextField
  final myController = TextEditingController();
  final myTitleController = TextEditingController();
  final myPortionsController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: <Widget>[
            Container(
              child:
                  Text('Title:', style: Theme.of(context).textTheme.subtitle1),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              maxLines: 1,
              controller: myTitleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text('Portions:',
                  style: Theme.of(context).textTheme.subtitle1),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              maxLines: 1,
              controller: myPortionsController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text('Add your own recipe:',
                  style: Theme.of(context).textTheme.subtitle1),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              maxLines: 10,
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Add recipe'),
              onPressed: () {
                firestoreInstance.collection("recipes").add({
                  "name": myTitleController.text,
                  "portions": 4,
                }).then((value) {
                  print(value.documentID);
                });
              },
            )),
          ],
        ));
  }
}
