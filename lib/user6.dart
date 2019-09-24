import 'package:flutter/material.dart';
import 'user7.dart';
/// This Widget is the main application widget.
class SextoRoute extends StatelessWidget {
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

  _onChanged() {}

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
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: TextFormField(

                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Direccion',
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                        ),
                        cursorColor: Colors.white,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(
                          top: 20,
                          right: 50
                      ),
                      child: FloatingActionButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SeptimoRoute()),
                          );
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
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity, // match_parent
                      child: RaisedButton(
                        child: Text(
                          "Continuar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.black)),
                        onPressed: _onChanged,
                        highlightColor: Colors.white,
                        color:
                        color, //specify background color  of button from our list of colors
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }}