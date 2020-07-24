import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app_mbj/Screen/login.dart';
class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}
class _Profile_ScreenState extends State<Profile_Screen> {
  int userid;
  String email = "",
      name = "",
      phone="",
      dob="",
      anniversary_date="";
  @override
  void initState() {
    super.initState();
    restore();
  }
  restore() async {
    print("data called");

    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    setState(() {
      userid = sharedPrefs.getInt("id") ;
      email = sharedPrefs.getString("email");
      print(email);
      name = sharedPrefs.getString("name");
      phone= sharedPrefs.getString("phone");
      anniversary_date=sharedPrefs.getString("anniversary_date");
      dob=sharedPrefs.getString("dob");
    });
    //TODO: More restoring of settings would go here...
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF670e1e),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
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
                      color: Color(0xFF670e1e),
                      size: 50,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width:100,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              //  backgroundImage: AssetImage('assets/images/Login_Icon.png'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            '$name',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            '$phone',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 270,
              width: 350,
              color: Colors.white,
              child: ListView(
                children: ListTile.divideTiles(context: context, tiles: [
                  ListTile(
                    title: Text('$email'),
                  ),
                  ListTile(
                    title: Text('$anniversary_date'),
                  ),
                  ListTile(
                    title: Text('$dob'),
                  ),
                  ListTile(
                    title: Text('Log out'),
                  ),
                ]).toList(),
              ))
        ],
      ),
    );
  }
}