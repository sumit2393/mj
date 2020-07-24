import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final productdata;
  ProductDetail({this.productdata});
  ProductDetailState createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
  @override
  void initState() {
    super.initState();
    print(widget.productdata);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          actions: <Widget>[
            Image.asset(
              "assets/images/home/Bell_Icon.png",
              height: 14,
              width: 14,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Image.asset(
                  "assets/images/product/Search_Icon.png",
                  height: 16,
                  width: 16,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: Stack(children: <Widget>[
        ListView(
          padding: EdgeInsets.only(bottom: 60),
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 350,
              child: Stack(children: <Widget>[
                Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 60),
                        child: Image.asset("assets/images/Homepage/13.png"))),
                new Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            jewellerybox(),
                            jewellerybox(),
                            jewellerybox(),
                          ],
                        ))),
                wishlist(context)
              ]),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: Text(
                  "ATTRACT DUAL LIGHT NECKLACE",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text("\u20B9" + '1,54,748',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text("\u20B9" + '1,54,748',
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ]),
              SizedBox(
                width: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Final price plus",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                SizedBox(
                  height: 8,
                ),
                Text("3 percent GST",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ]),
            ]),
            Container(
                margin: EdgeInsets.only(top: 35, bottom: 14),
                // padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(children: [
                        Text(
                          "COLLECTION",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "OUT",
                          style: TextStyle(fontSize: 8, color: Colors.black),
                        )
                      ]),
                      Column(children: [
                        Text(
                          "DESIGN CODE",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("NB3183",
                            style: TextStyle(fontSize: 8, color: Colors.black))
                      ]),
                      Column(children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("BRACELET",
                            style: TextStyle(fontSize: 8, color: Colors.black))
                      ])
                    ])),
            new SizedBox(height: 2, child: Container(color: Colors.white)),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Text(
                  "White gold tennis necklace with white diamonds and black enamel",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  )
                ]),
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: Row(
                  children: <Widget>[
                    quantity({
                      "title": "MATERIALS",
                      "value": "WHITE DIAMOND",
                      "image": "assets/images/product/material.png"
                    }),
                    quantity({
                      "title": "DIAMOND",
                      "value": "105 SIIJ | 1.575ct",
                      "image": "assets/images/product/diamond.png"
                    }),
                    quantity({
                      "title": "PRODUCT WEIGHT",
                      "value": "16.0 gram",
                      "image": "assets/images/product/weighht.png"
                    }),
                  ],
                )),
            Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ]),
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                padding: EdgeInsets.all(12),
                child: Column(children: <Widget>[
                  rateWidget({"title": "DIAMOND SET", "amount": "00"}),
                  rateWidget({"title": "ARTICLE - NECKLACE", "amount": "00"}),
                  rateWidget({"title": "GROSS WEIGHT", "amount": "00"}),
                  rateWidget({"title": "NET WEIGHT", "amount": "00"}),
                  rateWidget({"title": "DIAMOND PIECES", "amount": "00"}),
                  rateWidget({"title": "COLORSTONE WEIGHT", "amount": "00"}),
                  rateWidget({"title": "COLORSTONE PIECES", "amount": "00"}),
                  rateWidget({"title": "POLKI WEIGHT", "amount": "00"}),
                  rateWidget({"title": "POLKI PIECES", "amount": "00"}),
                  rateWidget({"title": "TAG PRICE", "amount": "00"}),
                ]))
          ],
        ),
        request(context),
      ]),
    );
  }
}

Widget rateWidget(data) {
  print(data);
  return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[50])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            data["title"],
            style: TextStyle(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Text(
            data["amount"],
            style: TextStyle(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ));
}

Widget request(context) {
  return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 18),
          color: Theme.of(context).primaryColor,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              children: [
                WidgetSpan(
                    child: Padding(
                        padding: EdgeInsets.only(right: 8, bottom: 2),
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 14,
                        ))),
                TextSpan(text: 'REQUEST A CALL BACK'),
              ],
            ),
          )));
}

Widget jewellerybox() {
  return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 0), // changes position of shadow
        ),
      ]),
      child: Image.asset(
        "assets/images/Homepage/13.png",
        height: 110,
      ));
}

Widget quantity(data) {
  return Expanded(
      child: Column(children: <Widget>[
    Image.asset(
      data["image"],
      height: 18,
    ),
    Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          data["title"],
          style: TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.w600),
        )),
    Text(data["value"], style: TextStyle(color: Colors.black, fontSize: 8))
  ]));
}

Widget wishlist(context) {
  return Positioned(
      top: 16,
      right: 16,
      child: Image.asset(
        "assets/images/product/Bell_Icon.png",
        height: 12,
      ));
}
