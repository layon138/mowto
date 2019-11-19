import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../widgets/boton1.dart';
import '../widgets/imputs.dart';
import 'password_page.dart';

/// This Widget is the main application widget.
class Registro_page extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Crear tu cuenta",
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

  crear_password() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Password_page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final azul_clarito = const Color(0xFF3ECCCD);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Form(
                key: _formKey,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Imputs1(
                          palabra: "Nombres",
                        ),
                        Imputs1(
                          palabra: "Apellidos",
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2, // 20%
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                ),
                                child: TextFormField(

                                  decoration: new InputDecoration(
                                    hintText: '+57',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(15.0),
                                      ),
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8, // 60%
                              child: Imputs1(
                                palabra: "Numero de celular",
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            "Para darte un excelente servicio verifica que este correcto",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Imputs1(
                          palabra: "Correo electronico",
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Boton1(
                            palabra: "Continuar",
                            onChanged:crear_password ,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'Al continuar implicar que has leido y aceptado los ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(text: 'Terminos y Condiciones', style: TextStyle(fontWeight: FontWeight.bold,color: azul_clarito)),
                                  TextSpan(text: ' y', style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' Politicas de Privacidad',style: TextStyle(fontWeight: FontWeight.bold,color: azul_clarito)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}
