import 'package:flutter/material.dart';
import '../widgets/boton1.dart';
import '../widgets/logo.dart';
import 'crearcuenta_page.dart';
import '../widgets/imputs.dart';

class Login_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    _Onpres(){
    }
    return  new Scaffold(
          //Here you can set what ever background color you need.
          backgroundColor: Colors.white,
      body: new MyStatefulWidget(),
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

  _onChanged() {

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
                    logo(),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child:  Container(
                                margin: EdgeInsets.all(10),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.black,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                  border: new Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid
                                  ),
                                ),
                                child: new TextFormField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: new InputDecoration(
                                    hintText: '+57',
                                    hintStyle: TextStyle(fontSize: 20.0, color: azul_clarito),
                                    border: InputBorder.none,

                                  ),
                                ),
                              ),
                            ),
                             Expanded(
                               flex: 8,
                               child:Imputs2(
                                 palabra: "Numero de celular",
                               )
                             )

                          ],
                        ),

                        Boton2(
                            onChanged: _onChanged,
                            palabra: "Entra"
                        )
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

