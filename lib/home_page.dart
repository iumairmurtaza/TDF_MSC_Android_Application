import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test3/groundfloor_page.dart';
import 'firstfloor_page.dart';
import 'constants.dart';
import 'foodology_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => GroundFloorPage(
                            title: 'Ground Floor: Kids World karachi',
                          )),
                );
              });
              const snackBar =
                  SnackBar(content: Text('Welcome to the ground Floor'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Image.asset(
              'images/gfimg.jpg',
              fit: BoxFit.cover, //
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => FirstFloorPage(
                            title: 'First Floor: World Within Us',
                          )),
                );
              });
              const snackBar =
                  SnackBar(content: Text('Welcome to the First Floor'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Image.asset(
              'images/ffimg.jpg',
              fit: BoxFit.cover, //
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => FirstFloorPage(
                            title: 'First Floor: World Within Us',
                          )),
                );
              });
              const snackBar =
                  SnackBar(content: Text('Welcome to the Second Floor'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Image.asset(
              'images/sfimg.jpg',
              fit: BoxFit.cover, //
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => FirstFloorPage(
                            title: 'First Floor: World Within Us',
                          )),
                );
              });
              const snackBar =
                  SnackBar(content: Text('Welcome to the First Floor'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Image.asset(
              'images/sgimg.jpg',
              fit: BoxFit.cover, //
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => FoodologyPage(
                      title: 'Foodology',
                    ),
                  ),
                );
              });
            },
            child: Image.asset(
              'images/fgimg.jpeg',
              fit: BoxFit.cover, //
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ShopPage(
                      title: 'MSC Shop',
                    ),
                  ),
                );
              });
            },
            child: Image.asset(
              'images/msimg.jpg',
              fit: BoxFit.cover, //
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
