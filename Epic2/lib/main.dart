import 'dart:io';
import 'package:Epic2/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Login Page',
        home: LoginPage(),
        theme: ThemeData(primaryColor: Colors.white),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => home()
        });
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController validEmail = new TextEditingController();
  TextEditingController validPassword = new TextEditingController();

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   validEmail.dispose();
  //   super.dispose();
  //   validPassword.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Watch Dogs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              new Image(
                image: new AssetImage("assets/epicwolf.gif"),
                height: 270,
                width: 960,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark,
                      primaryColor: Colors.white,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.white, fontSize: 20.0))),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          controller: validEmail,
                          decoration: new InputDecoration(
                              hintText: "Enter Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          controller: validPassword,
                          decoration: new InputDecoration(
                              hintText: "Enter Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          child: new Text("Login"),
                          onPressed: () => {
                            if (validEmail.text == "cictapps@wvsu.edu.ph" &&
                                validPassword.text == "toor")
                              {Navigator.pushNamed(context, "/home")}
                          },
                          splashColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
