import 'package:flutter/material.dart';
import 'package:flutter_application_02/homesrc.dart';
import 'package:flutter_application_02/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changef = false;
  var pass = 12345678;

  final _formkey = GlobalKey<FormState>();
  moveHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changef = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homesrc()));
      setState(() {
        changef = false;
      });
    }
  }

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/CompleteShallowFlyingsquirrel-size_restricted.gif",
                    height: 200,
                    width: 350,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username:",
                          labelStyle: TextStyle(color: Colors.black),
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Username";
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password:",
                          labelStyle: TextStyle(color: Colors.black),
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          } else if (value.length < 8) {
                            return "password length should be atleast 8";
                          } else if (value == pass) {
                            return "password is Incorrect";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                      // color: Colors.blue.shade900,
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(changef ? 50 : 8.0),
                      child: InkWell(
                        onTap: () => moveHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changef ? 50 : 150,
                          height: 50,
                          child: Center(
                            child: changef
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
