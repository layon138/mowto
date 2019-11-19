import 'package:flutter/material.dart';
import '../widgets/imputs.dart';
import '../widgets/boton1.dart';
import 'confirmardireccion_page.dart';

/// This Widget is the main application widget.
class Dondenecesitas_page extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  final cafe=const Color(0xFF505050);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: cafe,
          title: new Text(
            "¿Donde nos necesitas?",
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
      backgroundColor: cafe,
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

  agregar_direccion() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Confirmardireccion_page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Imputs1(
                      palabra: "Direccion actual",
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(
                          top: 20,
                          right: 50
                      ),
                      child: FloatingActionButton(

                        onPressed: () {

                        },
                        child: Icon(Icons.add,
                          color: Colors.white,

                        ),
                        backgroundColor: Colors.black,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child:Boton1(
                      onChanged: agregar_direccion,
                      palabra: "Continuar"
                  )
                ),
              ],
            ),
          ),
        );
      },
    );
  }}