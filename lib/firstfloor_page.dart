import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

// import 'package:url_launcher/url_launcher.dart';
//
// const _url = 'https://youtube.com';
// void _launchURL() async =>
//     await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

final List<String> entries = kFFentries;

class FirstFloorPage extends StatefulWidget {
  FirstFloorPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FirstFloorPageState createState() => _FirstFloorPageState();
}

class _FirstFloorPageState extends State<FirstFloorPage> {
  @override
  // void initState() {
  //   super.initState();
  //   // Enable hybrid composition.
  //   WebView.platform = SurfaceAndroidWebView();
  // }

  // return WebView(
  // initialUrl: 'https://flutter.dev',
  // );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Text(widget.title),
      ),
      body: Container(
          // child: Image.network(
          //     'https://magnifiscience.org/wp-content/uploads/2021/10/FM1-1-1024x724.jpg'),

          // StreamBuilder<dynamic>(
          // stream: gfExhibits,
          // builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          //
          //     StreamBuilder<QuerySnapshot>(
          //         stream: gfExhibits, builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          //
          // )
          //     ElevatedButton(
          //   onPressed: _launchURL,
          //   child: Text('Show youtube homepage'),
          // ),

          //     ListView.separated(
          //   padding: const EdgeInsets.all(8),
          //   itemCount: entries.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: 30,
          //       // color: Colors.amber[colorCodes[index]],
          //       color: Colors.blueGrey,
          //
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Center(
          //             child: Text('${entries[index]}'),
          //           ),
          //           GestureDetector(
          //             onTap: () {
          //               const snackBar = SnackBar(content: Text('Yaay'));
          //
          //               ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //             },
          //             child: Container(
          //               child: const Text('Visited'),
          //               padding: const EdgeInsets.all(8.0),
          //               decoration: BoxDecoration(
          //                 color: Theme.of(context).buttonColor,
          //                 borderRadius: BorderRadius.circular(8.0),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const Divider(),
          // ),
          ),
    );
  }
}
