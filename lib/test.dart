import 'package:flutter/material.dart';
import './classes/training_class.dart';

class MyHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(tag: "tagtest", child: Icon(Icons.add, size: 70.0));
  }
}
