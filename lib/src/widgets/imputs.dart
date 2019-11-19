import 'package:flutter/material.dart';


class Imputs1  extends StatelessWidget {
  Imputs1({@required this.palabra});
  final String  palabra;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: TextFormField(
          decoration: new InputDecoration(
            hintText: palabra,
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
    );
  }
}


class Imputs2 extends StatelessWidget{
  Imputs2({@required this.palabra});
  final String  palabra;
  Widget build(BuildContext context) {
    return  Container(
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
        keyboardType: TextInputType.numberWithOptions(),
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
        decoration: new InputDecoration(
          hintText: palabra,
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

}