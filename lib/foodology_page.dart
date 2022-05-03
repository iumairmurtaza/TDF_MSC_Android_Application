import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class FoodologyPage extends StatefulWidget {
  FoodologyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FoodologyPageState createState() => _FoodologyPageState();
}

class _FoodologyPageState extends State<FoodologyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Text(widget.title),
      ),
      body: Container(
          child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
                'https://magnifiscience.org/wp-content/uploads/2021/10/FM1-1-1024x724.jpg'),
          ),
          Expanded(
            child: Image.network(
                'https://magnifiscience.org/wp-content/uploads/2021/10/FM2-1-1024x724.jpg'),
          ),
          Expanded(
            child: Image.network(
                'https://magnifiscience.org/wp-content/uploads/2021/10/FM3-1024x724.jpg'),
          ),
        ],
      )),
    );
  }
}
