import 'package:flutter/material.dart';
import './Home.dart';
import './product.dart';
import './productdetail.dart';

const tabsdata = [
  "assets/images/home/Home_ICon.png",
  "assets/images/home/Recent_ICon.png",
  "assets/images/home/Offer_ICon.png",
  "assets/images/home/Gold_icon.png",
  "assets/images/home/Cart_ICon.png"
];

class Initial extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/home/Menu-Icon.png",
              height: 24,
              width: 24,
            ),
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("item1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("item2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: tabsdata
            .map((e) => BottomNavigationBarItem(
                backgroundColor: Color(0xFF670e1e),
                title: Text(""),
                icon: Image.asset(
                  e,
                  height: 24,
                )))
            .toList(),
      ),
      body: ProductDetail(),

      // body: TabBarView(children: [
      //   new Icon(
      //     Icons.directions_car,
      //     size: 50.0,
      //   ),
      //   new Icon(
      //     Icons.directions_transit,
      //     size: 50.0,
      //   ),
      //   new Icon(
      //     Icons.directions_bike,
      //     size: 50.0,
      //   ),
      //   new Icon(
      //     Icons.directions_bike,
      //     size: 50.0,
      //   ),
      //   new Icon(
      //     Icons.directions_bike,
      //     size: 50.0,
      //   ),
      // ])
    );
  }
}
