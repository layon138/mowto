import 'package:flutter/material.dart';
import '../widgets/boton1.dart';
import 'documento_mecanico_cedula.dart';
import 'documento_mecanico_certificado.dart';

class Documento_mecanico_pag extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Documentos",
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

  cambio_paginadocumento(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Documento_mecanico_cedula()),
    );
  }

  cambio_paginacertificado(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Documento_mecanico_Certificado()),
    );
  }

  cambiar_pagina(){

  }

  _onChanged() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0),side: BorderSide(color: color)),
          title: new Image(image: AssetImage('assets/mecanico_button.png'),
            color: Colors.black,),
          content: new Text("Hola Sebastian Bonilla Faltan los documentos",textAlign: TextAlign.center,),

          actions: <Widget>[
            new SizedBox(
              width: 250, // match_parent
              child: RaisedButton(
                child: Text(
                  "Listo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: color)),
                onPressed: cambio_paginacertificado,
                color:Colors.white, //specify background color  of button from our list of colors
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right:30,
                  top: 30,
                  bottom: 30,
                ),
                child: Text(
                  "Falta poco para que empieces a ganar dinero mowto",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 30,
                  bottom: 10,
                ),
                child:  Container(
                  width:  double.maxFinite,
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  color: box,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child:Row(
                        children: <Widget>[
                          Text("Documento de identidad"),
                          RaisedButton(
                            shape: new CircleBorder(),
                            child:  Icon(Icons.play_arrow,
                              color: box,
                            ),
                            onPressed: cambio_paginadocumento,
                            color:color,
                          )

                        ],
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 30,
                  bottom: 10,
                ),
                child:  Container(
                  width:  double.maxFinite,
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  color: box,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child:Row(
                          children: <Widget>[
                            Text("Certificado en Mecanica"),
                            RaisedButton(
                              shape: new CircleBorder(
                                side: BorderSide(
                                    color: Colors.black
                                ),
                              ),
                              child:  Icon(Icons.play_arrow,
                                color: box,
                              ),
                              onPressed: cambio_paginacertificado,
                              color:color,
                            )

                          ]
                      )
                  ),
                ),
              ),
             Boton1(
                onChanged: _onChanged,
                palabra: "Continuar"
             ),
            ],
          )
        ],
      ),
    );
  }
}

