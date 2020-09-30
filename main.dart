import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myanimation_app/screens/animation.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(canvasColor: Colors.amberAccent.shade100),
    debugShowCheckedModeBanner: false,
    initialRoute: 'animate',
    routes: {'animate': (context) => animation()},
  ));
}
