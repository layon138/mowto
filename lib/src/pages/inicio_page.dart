import 'package:flutter/material.dart';
import '../widgets/boton1.dart';
import '../widgets/logo.dart';
import 'crearcuenta_page.dart';
import 'login_page.dart';

class Inicio_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    iniciar_Sesion(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login_page()),
      );
    }
    crear_cuenta(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Crearcuenta_page()),
      );
    }
    return new Stack(
      children: <Widget>[
        new Scaffold(
          //Here you can set what ever background color you need.
          backgroundColor: Colors.white,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            logo(),
            Column(
              children: <Widget>[
                Boton1(
                  onChanged: crear_cuenta,
                  palabra: "Crear tu cuenta",
                ),
                Boton2(
                  onChanged: iniciar_Sesion,
                  palabra: "Entra",
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
