import 'package:flutter/material.dart';
import 'user6.dart';
import 'botones.dart';


/// This Widget is the main application widget.
class LoginRouter extends StatelessWidget {
  final azul_clarito = const Color(0xFF3ECCCD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      MaterialPageRoute(builder: (context) => SextoRoute()),
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
                    Container(
                    height: 60.0,
                    margin: EdgeInsets.only(
                      top: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.contain
                        // ...
                      ),
                    )
                ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2, // 20%
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                ),
                                child: TextFormField(

                                  decoration: new InputDecoration(
                                    hintText: '+57',
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
                              ),
                            ),
                            Expanded(
                              flex: 8, // 60%
                              child:  TextFormField(
                                  decoration: new InputDecoration(

                                    hintText: 'Numero de celular',
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
                              ),
                          ],
                        ),
                        SizedBox(
                          width: 300, // match_parent
                          child: RaisedButton(
                            child: Text(
                              "Entra",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
                            shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: color)),
                            onPressed: _onChanged,
                            color:Colors.white, //specify background color  of button from our list of colors
                          ),
                        ),
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
