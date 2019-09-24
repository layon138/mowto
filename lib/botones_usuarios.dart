import 'package:flutter/material.dart';
import 'user4.dart';
import 'mecanico4.dart';

class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDemoState();
  }
}

class ButtonDemoState extends State<ButtonDemo> {

  final color = const Color(0xFF050505);

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: Alignment.center,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 130,
                  height: 130,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TercerRoute()),
                      );
                    },
                    child: Image(
                      fit: BoxFit.contain,
                      color: Colors.white,
                      image: AssetImage('assets/usuario_button.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top:10,
                  ),
                  child: Text(
                    "Usuario",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ) ,
                )

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  width: 130,
                  height: 130,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mecanico7()),
                      );
                    },
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/mecanico_button.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top:10,
                  ),
                  child: Text(
                    "Mecanico",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ) ,
                )
              ],
            )
          ],
        )
    );
  }
}