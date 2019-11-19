import 'package:flutter/material.dart';

class logo extends StatelessWidget{
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