import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
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
                  padding: EdgeInsets.all(20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(left: 130),
                  child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.white, size: 30)),
                ),
                Text(
                  "Edit",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Image.asset(
              "assets/images/home/Home_ICon.png",
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "XYZ",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            "91+8675464566",
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
                    title: Text('Email'),
                  ),
                  ListTile(
                    title: Text('Anniversary Date'),
                  ),
                  ListTile(
                    title: Text('Date of birth'),
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
