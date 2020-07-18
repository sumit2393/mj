import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String _date = "Date Of Birth";
  String _anniversary="Anniversary";
  String email, password, name, number;

  @override
  void initState() {
   super.initState();
    // TODO: implement initState
    email = "";
    password = "";
    name = "";
    number = "";
    _date="Date Of Birth";

    _anniversary="Anniversary Date";
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenheight,
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
                  margin: EdgeInsets.only(top: 130),
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
                  height: 50,
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: TextField(

                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    cursorColor: Colors.white,
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

                      });
                    },
                  ),
                ),
               
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child:RaisedButton(
                    shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4.0,
                    onPressed: () {

                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 250.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(1950, 1, 1),
                          maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
                            print('confirm $date');
                            _date = '${date.year} - ${date.month} - ${date.day}';
                            setState(() {});
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.date_range,
                                      size: 22.0,
                                      color: Color(0xFF670e1e),
                                    ),
                                    Text(
                                      " $_date",
                                      style: TextStyle(
                                          color: Color(0xFF670e1e),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "  Change",
                            style: TextStyle(
                                color: Color(0xFF670e1e),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child:RaisedButton(
                    shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4.0,
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                            print('confirm $date');
                            _anniversary = '${date.year} - ${date.month} - ${date.day}';
                            setState(() {});
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.date_range,
                                      size: 22.0,
                                      color: Color(0xFF670e1e),
                                    ),
                                    Text(
                                      " $_anniversary",
                                      style: TextStyle(
                                          color: Color(0xFF670e1e),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "  Change",
                            style: TextStyle(
                                color: Color(0xFF670e1e),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 20.0, right: 0.0),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    Login()));
                      },
                      child:
                          const Text('Signup', style: TextStyle(fontSize: 20,color: Color(0xFF670e1e))),

                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
