import 'package:flutter/material.dart';
import 'botones_usuarios.dart';

class SecondRoute extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
            "Crear tu cuenta",
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
        child: new ButtonDemo(),
      ),
    );
  }
}

