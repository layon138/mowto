import 'package:flutter/material.dart';


class Boton1 extends StatelessWidget {
  Boton1({@required this.onChanged,@required this.palabra});
  final GestureTapCallback  onChanged;
  final String  palabra;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
      child:   SizedBox(
        width: double.infinity, // match_parent
        child: RaisedButton(
          child: Text(
            palabra,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Colors.black)),
          onPressed: onChanged,
          highlightColor: Colors.white,
          color:Colors.black,//specify background color  of button from our list of colors
        ),
      ),
    );
  }
}


class Boton2 extends StatelessWidget {
  Boton2({@required this.onChanged,@required this.palabra});
  final GestureTapCallback  onChanged;
  final String  palabra;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
        child: SizedBox(
      width: double.infinity, // match_parent
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        child: Text(
          palabra,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Colors.black)),
        onPressed: onChanged,
        highlightColor: Colors.white,
        color:Colors.white,//specify background color  of button from our list of colors
      ),
    ),
    );
  }
}

class Boton3 extends StatelessWidget {
  Boton3({@required this.onChanged,@required this.palabra,@required this.imagen,@required this.xy});
  final GestureTapCallback  onChanged;
  final String  palabra;
  final String  imagen;
  final double xy;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: xy,
          height: xy,
          child: RaisedButton(
            shape: CircleBorder(),
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage(imagen),
            ),
            onPressed: onChanged,
            highlightColor: Colors.white,
            color:Colors.black,//specify background color  of button from our list of colors
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top:10,
          ),
          child: Text(
            palabra,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ) ,
        )
      ],
    );
  }
}

class Boton_menu  extends StatelessWidget{
  Boton_menu({@required this.onChanged,@required this.palabra,@required this.icono});
  final GestureTapCallback  onChanged;
  final String  palabra;
  final IconData  icono;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new  RaisedButton(
      padding: EdgeInsets.all(12),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child:  Icon(
              icono,
            ),
          ),
          Text(
            palabra,
          ),
        ],
      ),
      highlightColor: Colors.black,
      onPressed: onChanged,
    );
  }
}