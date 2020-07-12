import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './product.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPageIndex = 0;
  var carousellist = [
    {"image": "assets/images/Homepage/1.png", "name": "Necklace"},
    {"image": "assets/images/Homepage/1.png", "name": "Earrings"},
    {"image": "assets/images/Homepage/1.png", "name": "Bangles"},
  ];

  var categorieslist = [
    {"image": "assets/images/Homepage/6.png", "name": "Necklace"},
    {"image": "assets/images/dummybrace.jpg", "name": "Earrings"},
    {"image": "assets/images/dummybangles.jpeg", "name": "Bangles"},
    {"image": "assets/images/dummybrace.jpg", "name": "Rings"},
  ];

  var newtrends = [
    {"image": "assets/images/Homepage/13.png", "name": "Statement Necklace"},
    {"image": "assets/images/Homepage/12.png", "name": "Fashion Bracelet"},
    {"image": "assets/images/Homepage/14.png", "name": "Dengle earrings"},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: <Widget>[
        Stack(children: <Widget>[
          CarouselSlider.builder(
              itemCount: carousellist.length,
              itemBuilder: (BuildContext context, int itemIndex) => Container(
                      child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(carousellist[itemIndex]["image"]))),
                  )),
              options: CarouselOptions(
                viewportFraction: 1.0,
                // aspectRatio: 1.0,
                height: 200,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
              )),
          new Positioned(
              left: 12,
              bottom: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: carousellist.map((url) {
                  int index = carousellist.indexOf(url);
                  return Container(
                    width: _currentPageIndex == index ? 8.0 : 5.0,
                    height: _currentPageIndex == index ? 8.0 : 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffebab40)),
                      color: _currentPageIndex == index
                          ? Colors.transparent
                          : Color(0xffebab40),
                    ),
                  );
                }).toList(),
              ))
        ]),
        Padding(
            padding: EdgeInsets.only(top: 18, bottom: 4),
            child: Text(
              "CATEGORIES",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )),
        SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorieslist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xFFd7d3c8),
                            child: Image.asset(
                              categorieslist[index]["image"],
                              height: 30,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(categorieslist[index]["name"]))
                        ],
                      ));
                })),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/Homepage/4.png")))),
                ),
                Expanded(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                      Container(
                          height: 100,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Homepage/2.png")))),
                      new SizedBox(
                        height: 5,
                      ),
                      Container(
                          height: 145,
                          //width: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Homepage/3.png")))),
                    ]))
              ],
            )),
        GridView.count(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height - 200),
          children: categorieslist
              .map((e) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                    color: Theme.of(context).primaryColor,
                    child: Column(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        e["image"],
                                      ))))),
                      Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 2),
                          child: Text(
                            "Fashion Rings",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      ButtonTheme(
                          minWidth: 100.0,
                          height: 30.0,
                          buttonColor: Theme.of(context).primaryColor,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white)),
                              child: Text(
                                "REQUEST A CALLBACK",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 7),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProduclList()));
                                //print("request call");
                              }))
                    ]),
                  ))
              .toList(),
        ),
        Container(
            margin: EdgeInsets.only(left: 12, right: 12, bottom: 35, top: 5),
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Homepage/5.png")))),
        Text(
          "Find a jewellery design" + "\n" + "that's perfectly you",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Container(
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: newtrends.length,
                itemBuilder: (context, index) {
                  return Row(
                      textDirection: (index % 2 == 0)
                          ? TextDirection.ltr
                          : TextDirection.rtl,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(newtrends[index]["image"]))),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(left: 15),
                          height: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "NEW" + "\n" + "TRENDS",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      newtrends[index]["name"],
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    )),
                                RaisedButton(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  onPressed: () {
                                    print("view more");
                                  },
                                  child: Text("View More  ->"),
                                )
                              ]),
                        ))
                      ]);
                }))
      ]),
    );
  }
}
