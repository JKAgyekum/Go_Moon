import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Go_APP",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 0)),
      home: Scaffold(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
