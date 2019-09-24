import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class OctavoRoute extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  final cafe=const Color(0xFF505050);
  final fondo = const Color(0xFFefefef);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Cll 51 a b n108",
            style: TextStyle(color: azul_clarito),
          ),
        actions: <Widget>[
          // action button
          Icon(
            Icons.notifications,
          )
        ],
        iconTheme: new IconThemeData(color: azul_clarito),

      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: fondo, //This will change the drawer background to blue.
            //other styles
          ),
          child: Menulateral(),
          ),
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

  _onChanged() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child:Image(
              fit: BoxFit.contain,
              image: AssetImage('assets/solicitar_mayor.png'),
            ),
        ),
        Row(
          children: <Widget>[
            Padding(
    padding: EdgeInsets.only(
    top: 20,
    left: 10,
    right: 10,
    ),
    child:  Image(
    height: 100,
    fit: BoxFit.cover,
    image: AssetImage('assets/mantenimiento.png'),
    ),
    ),

            Text(
              "Mantenimiento"
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child:  Image(
                height: 100,
                fit: BoxFit.cover,
                image: AssetImage('assets/peritaje.png'),
              ),
            ),

            Text(
                "Mantenimiento"
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child:  Image(
                height: 100,
                fit: BoxFit.cover,
                image: AssetImage('assets/tarea.png'),
              ),
            ),

            Text(
                "Mantenimiento"
            ),
          ],
        ),
      ],
    );
  }
}

class Menulateral extends StatelessWidget{

  final fondo = const Color(0xFFefefef);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      child: ListView(
          children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child:Image(
                  height: 30,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/logo.png'),
                ) ,
            ),
      Padding(
        padding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,// match_parent
              child: RaisedButton(
                shape: CircleBorder(),
                color: Colors.black,
                onPressed: () {

                },
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/usuario_button.png'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 00,
                    right: 10,
                  ),
                  child:  Text(
                    "Sebastian",
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 10,
                    right: 10,
                  ),
                  child:  Text(
                    "Sebastian@hotmail.com",
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(
                bottom: 60,
                left: 0
              ),
              child:  Icon(
                Icons.brightness_high,
              ),
            )


          ],

        ),
      ),
Padding(
  padding: EdgeInsets.only(
    top: 10,
    left: 10,
    right: 10,
  ),
  child:Image(
    fit: BoxFit.cover,
    image: AssetImage('assets/agenda.png'),
  ),
),
            Container(
              color: fondo,
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Text(
                "Mi Cuenta"
              ),
            ),
      Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child:  Icon(
                        Icons.person,
                      ),
                    ),
                    Text(
                        "Perfil"
                    ),
                  ],
                )
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.motorcycle,
                        ),
                      ),
                      Text(
                          "Motos"
                      ),
                    ],
                  )
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.person_pin_circle,
                        ),
                      ),
                      Text(
                          "Direcciones"
                      ),
                    ],
                  )
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.receipt,
                        ),
                      ),
                      Text(
                          "Mis servicios"
                      ),
                    ],
                  )
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.monetization_on,
                        ),
                      ),
                      Text(
                          "Medios de pagos"
                      ),
                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Text(
                    "¿Necesitas Ayuda?"
                ),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.monetization_on,
                        ),
                      ),
                      Text(
                          "Centro de Ayuda"
                      ),
                    ],
                  )
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.monetization_on,
                        ),
                      ),
                      Text(
                          "Terminos y condiciones"
                      ),
                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child:  Icon(
                          Icons.close,
                        ),
                      ),
                      Text(
                          "Cerrar sesion"
                      ),
                    ],
                  )
              ),
          ],
      ),

    );
  }

}