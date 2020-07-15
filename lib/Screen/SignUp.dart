import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email, password, name, number;

  @override
  void initState() {
    // TODO: implement initState
    email = "";
    password = "";
    name = "";
    number = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3), BlendMode.colorBurn)),
        ),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 100,
                height: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 50,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  cursorColor: Colors.white,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Color.fromRGBO(140, 0, 0, 0.2),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (input) {
                    setState(() {
                      name = input;
                    });
                  },
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  cursorColor: Colors.white,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Color.fromRGBO(140, 0, 0, 0.2),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (input) {
                    setState(() {
                      email = input;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.numberWithOptions(),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Color.fromRGBO(140, 0, 0, 0.2),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Number',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (input) {
                    setState(() {
                      password = input;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 20.0, right: 0.0),
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)),
                    padding: const EdgeInsets.all(0.0),
                    onPressed: () {},
                    child:
                        const Text('Sign up', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
