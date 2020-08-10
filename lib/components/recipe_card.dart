import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
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
