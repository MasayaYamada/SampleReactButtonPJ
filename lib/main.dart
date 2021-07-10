import 'package:flutter/material.dart';

import 'data.dart' as Data;
import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'リアクションボタンサンプル',
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('Flutter Reaction Button'),
          ),
          body: Builder(
            builder: (context) => ListView(
              padding: const EdgeInsets.symmetric(vertical: 5),
              children: [
                Item(
                  'image 1',
                  'assets/images/img1.jpg',
                  Data.reactions,
                ),
              ],
            ),
          ),
        ),
      );
}
