// ignore_for_file: use_key_in_widget_constructors, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  // ignore: unused_field
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      // ignore: prefer_const_constructors
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
                  fit: BoxFit.cover,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "UserName",
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot empty";
                            } else if (value.length < 6) {
                              return "password length should be atleast 6";
                            }

                            return null;
                          }),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 40,
                      ),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),

                          // async {
                          // setState(() {
                          //   changebutton = true;
                          // });

                          // // ignore: prefer_const_constructors
                          // await Future.delayed(Duration(seconds: 1));
                          // await Navigator.pushNamed(
                          //     context, MyRoutes.homeRoute);

                          // setState(() {
                          //   changebutton = false;
                          // });
                          // },
                          child: AnimatedContainer(
                            // ignore: prefer_const_constructors
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changebutton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changebutton
                                // ignore: prefer_const_constructors
                                ? Icon(Icons.done, color: Colors.white)
                                // ignore: prefer_const_constructors
                                : Text(
                                    "Login",
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                            // decoration: BoxDecoration(
                            //     color: Colors.deepPurple,
                            //     // shape: changebutton
                            //     //     ? BoxShape.circle
                            //     //     : BoxShape.rectangle
                            //     borderRadius:
                            //         BorderRadius.circular(changebutton ? 50 : 8)),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //       primary: Colors.white, minimumSize: Size(150, 40)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
