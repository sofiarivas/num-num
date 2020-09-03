import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:num_num/view/home.dart';
import 'package:provider/provider.dart';
import 'package:num_num/my_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: MaterialApp(
          title: 'num num app',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            fontFamily: 'Merriweather',
            brightness: Brightness.dark,
            primaryColor: Colors.red,
            accentColor: Colors.redAccent,
            primaryColorLight: Colors.red.shade100,
            primaryColorDark: Colors.red.shade700,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Home()),
    );
  }
}
