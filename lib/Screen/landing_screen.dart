import 'package:flutter/material.dart';
import 'package:flutter_app_mbj/Screen/SignUp.dart';
import 'package:flutter_app_mbj/Screen/login.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
//import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentPageIndex = 0;
  var landinglist = [
    {"image": "assets/images/Homepage/1.png", "name": "Necklace"},
    {"image": "assets/images/Homepage/1.png", "name": "Earrings"},
    {"image": "assets/images/Homepage/1.png", "name": "Bangles"},
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: new Column(
          children: <Widget>[
            new ConstrainedBox(
                child: new Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                          startIndex: -1, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                    new Offset(-370.0, -40.0),
                    new Offset(0.0, 0.0),
                    new Offset(370.0, -40.0)
                  ]),
                  itemWidth: 325.0,
                  itemHeight: 230.0,
                  itemBuilder: (context, index) {
                    return new Container(
                      padding: EdgeInsets.only(top: 20),
                      color: Colors.white,
                      child: new Center(
                        child: Image.asset(landinglist[index]["image"]),
                      ),
                    );
                  },
                  pagination:
                      new SwiperPagination(margin: new EdgeInsets.all(5.0)),
                  itemCount: 3,
                  autoplay: true,
                ),
                constraints:
                    new BoxConstraints.loose(new Size(screenWidth, 300.0))),
            SizedBox(
              height: 50,
            ),
            Text(
              "LUXURY DESIGNS",
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF670e1e),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.only(left: 160, right: 160),
                child: Divider(
                  color: Color(0xFF670e1e),
                  thickness: 3,
                )),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  buttonColor: Theme.of(context).primaryColor,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Login with Phone",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      })),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: ButtonTheme(
                  height: 50.0,
                  buttonColor: Theme.of(context).primaryColor,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()));
                      })),
            )
          ],
        ));
  }
}
