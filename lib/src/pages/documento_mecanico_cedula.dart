import 'package:flutter/material.dart';
import '../widgets/boton1.dart';


class Documento_mecanico_cedula extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Documento de identidad",
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

  abrir_camara() {

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
                  "Toma una foto a la cara frontal de tu documento de identidad",
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
                        child: Image(image: AssetImage("assets/icono_cedula.png")),
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
              Boton1(
                  onChanged: abrir_camara,
                  palabra: "Tomar foto"
              )
            ],
          )
        ],
      ),
    );
  }
}
