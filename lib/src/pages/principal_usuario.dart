import 'package:flutter/material.dart';
import '../widgets/menu_usuario.dart';

/// This Widget is the main application widget.
class Principal_usuario_page extends StatelessWidget {
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
          child: Menu_usuario(),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    "Mantenimiento",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),

                ),
                Text(
                    "¡Que tu moto no te avise!"
                ),
    Container(
    height: 3.0,
    width: double.maxFinite,
    color: Colors.black,
    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    ),
              ],
            )

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

