import 'package:flutter/material.dart';
import 'user3.dart';
import 'usur_ingreso.dart';

class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDemoState();
  }
}

class ButtonDemoState extends State<ButtonDemo> {

  final color = const Color(0xFF050505);

  _onChanged() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute()),
    );
  }
  _onChanged1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginRouter()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //verticalDirection: VerticalDirection.up,
            children: <Widget>[
              SizedBox(
                  width: 300, // match_parent
                  child: RaisedButton(
                    child: Text(
                      "Crear tu cuenta",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Colors.white)),
                    onPressed: _onChanged,
                    highlightColor: Colors.white,
                    color:color, //specify background color  of button from our list of colors
                  ),
              ),
              SizedBox(
                  width: 300, // match_parent
                  child: RaisedButton(
                    child: Text(
                      "Entra",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: color)),
                    onPressed: _onChanged1,
                    color:Colors.white, //specify background color  of button from our list of colors
                  ),
              ),
              SizedBox(
                height: 50,
              )

            ],
          ),
        );
  }
}


