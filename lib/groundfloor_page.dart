import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_test3/constants.dart';
import 'package:flutter_app_test3/main.dart';

final List<String> entries = kGFentries;
// final List<int> colorCodes = <int>[400, 200, 100];

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(App());
// }

class GroundFloorPage extends StatefulWidget {
  GroundFloorPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GroundFloorPageState createState() => _GroundFloorPageState();
}

class _GroundFloorPageState extends State<GroundFloorPage> {
  // final Stream<QuerySnapshot> gfExhibits = FirebaseFirestore.instance
  //     .collection('Ground Floor Exhibits')
  //     .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child:

              // StreamBuilder<dynamic>(
              // stream: gfExhibits,
              // builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //
              //     StreamBuilder<QuerySnapshot>(
              //         stream: gfExhibits, builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              //
              // )

              ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 30,
                // color: Colors.amber[colorCodes[index]],
                color: Colors.blueGrey,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text('${entries[index]}'),
                    ),
                    GestureDetector(
                      onTap: () {
                        const snackBar = SnackBar(content: Text('Yaay'));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Container(
                        child: const Text('Visited'),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).buttonColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
