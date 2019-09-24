import 'package:flutter/material.dart';
import 'user8.dart';

/// This Widget is the main application widget.
class SeptimoRoute extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  final cafe=const Color(0xFF505050);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Confirmar direccion",
            style: TextStyle(color: azul_clarito),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: azul_clarito,
            ),
            onPressed: () => Navigator.pop(context),
          )),

      body: new Center(
        child: new MyStatefulWidget(),
      ),
      backgroundColor:Colors.white,
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
  final azulito= const Color(0xFF3ECCCD);

  _onChanged() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OctavoRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width:(double.infinity-10),
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ), //       <--- BoxDecoration here
          child: Text(
            "cll 64b n108-78",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0,),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child:Text(
                    "¿Esta correcta tu ubicacion?",
                  style: TextStyle(fontSize: 20.0,),

                )
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 50,
                  right: 50,
                ),
                child: SizedBox(
                  //width: double.infinity, // match_parent
                  child: RaisedButton(

                    child: Text(
                      "Corregir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: azulito,
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                        side: BorderSide(color: azulito)),
                    onPressed: _onChanged,
                    highlightColor: Colors.white,
                    color:
                    Colors.white, //specify background color  of button from our list of colors
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child:Text(
                    "¿Es la direccion de?",
                  style: TextStyle(fontSize: 20.0,),
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {

                    },
                    child: Image(
                      fit: BoxFit.contain,
                      color: Colors.white,
                      image: AssetImage('assets/icono_oficina.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {

                    },
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/icono_otro.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {

                    },
                    child: Image(
                      fit: BoxFit.contain,
                      color: Colors.white,
                      image: AssetImage('assets/icono_casa.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              width: double.infinity, // match_parent
              child: RaisedButton(
                child: Text(
                  "Continuar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: _onChanged,
                highlightColor: Colors.white,
                color:
                color, //specify background color  of button from our list of colors
              ),
            ),
          ),
        ),
      ],
    );
  }
}