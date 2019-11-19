import 'package:flutter/material.dart';
import 'boton_widget.dart';
import 'botones.dart';
import  'src/pages/inicio_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new Center(
          child: new Inicio_page(),
        ),
      ),
    );
  }
}
