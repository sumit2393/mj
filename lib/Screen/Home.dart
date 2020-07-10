import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var categorieslist = [
    {"image": "assets/images/dummynecklace.jpeg", "name": "Necklace"},
    {"image": "assets/images/dummybrace.jpg", "name": "Earrings"},
    {"image": "assets/images/dummybangles.jpeg", "name": "Bangles"},
    {"image": "assets/images/dummybrace.jpg", "name": "Rings"},
  ];

  var newtrends = [
    {"image": "assets/images/dummynecklace.jpeg", "name": "Statement Necklace"},
    {"image": "assets/images/dummybrace.jpg", "name": "Fashion Bracelet"},
    {"image": "assets/images/dummybangles.jpeg", "name": "Dengle earrings"},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        CarouselSlider.builder(
            itemCount: categorieslist.length,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage(categorieslist[itemIndex]["image"]))),
                )),
            options: CarouselOptions(
              viewportFraction: 1.0,
              // aspectRatio: 1.0,
              height: 200,
              autoPlay: true,
            )),
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
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/dummybrace.jpg")))),
                ),
                Expanded(
                    flex: 4,
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
                                          "assets/images/dummynecklace.jpeg")))),
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
                                          "assets/images/dummybangles.jpeg")))),
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
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        e["image"],
                                      ))))),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Fashion Rings",
                            style: TextStyle(color: Colors.white),
                          )),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white)),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          print("sas");
                        },
                        child: Text("View more"),
                      )
                    ]),
                  ))
              .toList(),
        ),
        Container(
            margin: EdgeInsets.only(left: 12, right: 12, bottom: 18),
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/dummybrace.jpg")))),
        Text(
          "Find a jewellery design" + "\n" + "that's perfectly you",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        ListView.builder(
            padding: EdgeInsets.all(16),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: newtrends.length,
            itemBuilder: (context, index) {
              return Row(
                  textDirection:
                      (index % 2 == 0) ? TextDirection.ltr : TextDirection.rtl,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(newtrends[index]["image"]))),
                    )),
                    Expanded(
                        child: Container(
                      height: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "New" + "\n" + "TRENDS",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(newtrends[index]["name"]),
                            RaisedButton(
                              onPressed: () {
                                print("view more");
                              },
                              child: Text("View More  ->"),
                            )
                          ]),
                    ))
                  ]);
            })
      ]),
    );
  }
}
