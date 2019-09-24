import 'package:flutter/material.dart';
import 'boton_widget.dart';
import 'botones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        body: new Center(
          child: new Boton_Widget(),
        ),
      ),
    );
  }
}
