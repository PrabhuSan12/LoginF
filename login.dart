import 'package:flutter/material.dart';
import 'package:login_ui/tabs.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => TabsPage(),
                  ));
            },
            child: null),
        body: Container(
            child: Center(
                //child: new Container(child:FlatButton(onPressed: onPressed, child: child))))
                child: new Container(
                    padding: const EdgeInsets.all(30.0),
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                        child: new Column(children: [
                          new Padding(padding: EdgeInsets.only(top: 140.0)),
                          new Text(
                            'LOGIN UI',
                            style: new TextStyle(
                                color: hexToColor("#f2f2f2"), fontSize: 25.0),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 80.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Email",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 80.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              fillColor: Colors.white,

                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Password cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          )
                        ]),
                      ),
                    )))));
  }

  hexToColor(String s) {}

  text(String s) {}
}
