import 'package:flutter/material.dart';

import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        //fontFamily: 'Montserrat',
      ),
      home: HomePage(),
    );
  }
}
