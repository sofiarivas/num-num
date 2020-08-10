import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {
        //
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title:
              Text('Todays', style: TextStyle(fontFamily: 'Roboto Condensed')),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title:
              Text('Search', style: TextStyle(fontFamily: 'Roboto Condensed')),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity),
          title:
              Text('Profile', style: TextStyle(fontFamily: 'Roboto Condensed')),
        ),
      ],
    );
  }
}
