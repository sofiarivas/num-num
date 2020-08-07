import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Todays',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Profile',
                style: TextStyle(fontFamily: 'Roboto Condensed')),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            hero_section(),
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
                        recipe_card(),
                        recipe_card(),
                        recipe_card(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class hero_section extends StatelessWidget {
  const hero_section({
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

class recipe_card extends StatelessWidget {
  const recipe_card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Theme.of(context).accentColor,
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: 200,
          height: 250,
          child: Column(
            children: <Widget>[
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                  ),
                ),
                child: Row(),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          '5-ingredient tortellini in brodo with greens',
                          style: Theme.of(context).textTheme.subtitle2),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 18.0,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Massimo Boturra',
                                  style: Theme.of(context).textTheme.caption),
                              Text('Osteria Francescana',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Theme.of(context).accentColor,
                                          fontSize: 9.0))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
