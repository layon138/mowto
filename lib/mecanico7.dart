import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class mecanico10 extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  final cafe = const Color(0xFF827d66);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: cafe,
          title: new Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 50,
            ),
            padding: const EdgeInsets.only(
            left: 20,
            right: 50,
          ),

            color: Colors.black,
            child: Text(
              "0",
            ),
          ),
          actions: <Widget>[
            // action button
            Icon(
              Icons.notifications,
              color: Colors.black,
            )
          ],
          leading: IconButton(icon: Icon(Icons.person,
            color: Colors.black,
          ),
            onPressed: () => Navigator.pop(context),
          )
      ),
      body: new Center(
        child: new MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  final color = const Color(0xFF050505);
  final box=const Color(0xFFf2f2f2);
  final azul_clarito = const Color(0xFF3ECCCD);

  @override
  Widget build(BuildContext context) {
    _onChanged() {

    }
    bool isSwitched = true;
    return Form(
      key: _formKey,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right:50,
                  top: 30,
                  bottom: 30,
                ),
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        shape: new CircleBorder(
                          side: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        child:  Icon(Icons.calendar_view_day,
                          color: box,
                        ),
                        onPressed: _onChanged,
                        color:color,
                      ),
                      CupertinoSwitch(

                        activeColor: Colors.black,
                        value: isSwitched,
                        onChanged: (bool value) { setState(() { isSwitched = value; }); },
                      ),
                      RaisedButton(
                        shape: new CircleBorder(
                          side: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        child:  Icon(Icons.headset_mic,
                          color: box,
                        ),
                        onPressed: _onChanged,
                        color:color,
                      )
                    ],
                  ),
                  Text(
                    "¡Conectarme!",
                    style: TextStyle(
                      color: azul_clarito,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top:20,
                    ),
                  )
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}
