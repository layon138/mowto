import 'package:flutter/material.dart';
import '../widgets/boton1.dart';
import 'registro_page.dart';
import 'documento_mecanico_page.dart';

class Crearcuenta_page extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);


  @override
  Widget build(BuildContext context) {
    ir_crear_tecnico(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Documento_mecanico_pag()),
      );
    }
    ir_crear_usuario(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Registro_page()),
      );
    }
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
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Boton3(
                  palabra: "Usuario",
                  imagen:'assets/usuario_button.png',
                  onChanged: ir_crear_usuario,
                  xy: 130,
                ),
                Boton3(
                  palabra: "Tecnico",
                  imagen:'assets/mecanico_button.png',
                  onChanged: ir_crear_tecnico,
                  xy: 130,
                )
              ],
            ),

          ],
        )
      )
    );
  }
}



