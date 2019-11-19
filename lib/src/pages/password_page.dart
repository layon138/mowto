import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../widgets/boton1.dart';
import '../widgets/imputs.dart';
import 'dondenecesitas_page.dart';

/// This Widget is the main application widget.
class Password_page extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Crear tu clave",
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

  _onChanged() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dondenecesitas_page()),
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
                    Imputs1(
                      palabra: "* * * *",
                    ),
                    Boton1(
                        onChanged: _onChanged,
                        palabra: "Continuar"
                    )
                  ],
                )
            ),
          ),
        );
      },
    );
  }
}
