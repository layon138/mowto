import 'package:flutter/material.dart';

class mecanico9 extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Certificado en mecanica",
            style: TextStyle(
                color: azul_clarito
            ),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back,
            color: azul_clarito,
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

  _onChanged() {

  }

  @override
  Widget build(BuildContext context) {

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
                  "Sube el documento que te certifica como tecnico en mecanica de motos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 30,
                    bottom: 20,
                  ),
                  child:  Column(
                    children: <Widget>[
                      Container(
                        child: Image(image: AssetImage("assets/icono_documento.png")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text(
                          "Verfica que todos los datos sean legibles",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,

                          ),),
                      )
                    ],
                  )
              ),

              SizedBox(
                width: 300, // match_parent
                child: RaisedButton(
                  child: Text(
                    "Cargar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: color)),
                  onPressed: showDialog,
                  color:color, //specify background color  of button from our list of colors
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
