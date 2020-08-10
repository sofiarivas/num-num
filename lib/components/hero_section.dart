import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320.0,
      padding: EdgeInsets.only(bottom: 30, left: 20),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
        ),
      ),
      child: Container(
        width: 250,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.black87,
        ),
        child: Text('It is time to revive fruit salad.',
            style: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
