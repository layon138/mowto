import 'package:flutter/material.dart';
import '../pages/inicio_page.dart';
import 'boton1.dart';

class Menu_usuario extends StatelessWidget{

  final fondo = const Color(0xFFefefef);

  @override
  Widget build(BuildContext context) {
    cerrar_sesion(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Inicio_page()),
      );
    }
    // TODO: implement build
    return new Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child:Image(
              height: 30,
              fit: BoxFit.contain,
              image: AssetImage('assets/logo.png'),
            ) ,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,// match_parent
                  child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.black,
                    onPressed: () {

                    },
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/usuario_button.png'),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                        left: 00,
                        right: 10,
                      ),
                      child:  Text(
                        "Sebastian",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                        left: 10,
                        right: 10,
                      ),
                      child:  Text(
                        "Sebastian@hotmail.com",
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(
                      bottom: 60,
                      left: 0
                  ),
                  child:  Icon(
                    Icons.brightness_high,
                  ),
                )


              ],

            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child:Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/agenda.png'),
            ),
          ),
          Container(
            color: fondo,
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Text(
                "Mi Cuenta"
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    child:  Icon(
                      Icons.person,
                    ),
                  ),
                  Text(
                      "Perfil"
                  ),
                ],
              )
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    child:  Icon(
                      Icons.motorcycle,
                    ),
                  ),
                  Text(
                      "Motos"
                  ),
                ],
              )
          ),
          Boton_menu(
            palabra: "Motos",
            onChanged: cerrar_sesion,
            icono:Icons.person_pin_circle,
          ),
          Boton_menu(
            palabra: "Direcciones",
            onChanged: cerrar_sesion,
            icono: Icons.person_pin_circle,
          ),
          Boton_menu(
            palabra: "Medios de pagos",
            onChanged: cerrar_sesion,
            icono: Icons.monetization_on,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Text(
                "¿Necesitas Ayuda?"
            ),
          ),
          Boton_menu(
            palabra: "Centro de Ayuda",
            onChanged: cerrar_sesion,
            icono: Icons.monetization_on,
          ),
          Boton_menu(
            palabra: "Terminos y condiciones",
            onChanged: cerrar_sesion,
            icono: Icons.monetization_on,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
            ),
          ),
          Boton_menu(
            palabra: "Cerrar sesion",
            onChanged: cerrar_sesion,
            icono: Icons.close,
          )
        ],
      ),

    );
  }
}



