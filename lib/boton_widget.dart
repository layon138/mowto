import 'package:flutter/material.dart';
import 'botones.dart';

class Boton_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Scaffold(
          //Here you can set what ever background color you need.
          backgroundColor: Colors.white,
        ),
        ButtonDemo(),
        imagen(),
      ],
    );
  }

}



class imagen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 60.0,
        margin: EdgeInsets.only(
            top: 120,
        ),
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/logo.png'),
            fit: BoxFit.contain
    // ...
    ),
    )
    );
  }

}

