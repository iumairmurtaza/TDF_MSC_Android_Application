import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Text(widget.title),
      ),
      body: Container(
          child: ListView(
        children: [
          Expanded(
            child: Image.network(
                'https://magnifiscience.org/wp-content/uploads/2021/09/MSC-Shop-Picture-1024x684.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'MSC Shop',
                style: kHomePageTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                  'Here you will find a nice selection of souvenirs and products inspired by the collections of MagnifiScience Centre (MSC). Come and browse themed toys, MSC merchandize, fun and educational science kits, puzzles, books, and much more. The gift shop is located next to the foyer and can be accessed from inside as well as the entrance of the science centre.'),
            ),
          ),
        ],
      )),
    );
  }
}
