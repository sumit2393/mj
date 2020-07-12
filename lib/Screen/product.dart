import 'package:flutter/material.dart';
import './productdetail.dart';

class ProduclList extends StatefulWidget {
  _ProduclListstate createState() => _ProduclListstate();
}

class _ProduclListstate extends State<ProduclList> {
  var productlist = [
    {"image": "assets/images/Homepage/6.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/9.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/10.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/11.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/12.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/13.png", "name": "Fashion Necklace"},
  ];

  var categoriesname = [
    "ALL",
    "BRACELET",
    "EARRINGS",
    "NECKLACE",
    "PENDANT",
    "RING"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(32.0),
        //   child: AppBar(
        //     backgroundColor: Color(0xFF670e1e).withOpacity(0.1),

        //     actions: <Widget>[
        //       Image.asset(
        //         "assets/images/home/Bell_Icon.png",
        //         height: 14,
        //         width: 14,
        //       ),
        //       Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //           child: Image.asset(
        //             "assets/images/product/Search_Icon.png",
        //             height: 16,
        //             width: 16,
        //           ))
        //     ],
        //   ),
        // ),
        body: Stack(children: <Widget>[
      ListView(
        padding: EdgeInsets.only(bottom: 50),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: new AssetImage("assets/images/product/Background.png"),
            )),
            // foregroundDecoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(
            //       "assets/images/product/diamond.png",
            //     ),
            //   ),
            // ),
            child: Stack(children: <Widget>[
              Positioned(
                  left: 0,
                  top: 20,
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Bracelets",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )

                      // Image.asset('assets/images/home/Bell_Icon.png',
                      //     height: 12)
                    ],
                  )),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                right: 0,
                child: SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return Text(
                            " | ",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesname.length,
                        itemBuilder: (context, index) {
                          return Text(
                            categoriesname[index],
                            style: TextStyle(color: Colors.white),
                          );
                        })),
              )
            ]),
          ),
          Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  filter({
                    "image": "assets/images/home/Cart_ICon.png",
                    "name": "FILTER",
                    "size": 14.0
                  }),
                  filter({
                    "image": "assets/images/home/Cart_ICon.png",
                    "name": "SORT",
                    "size": 14.0
                  }),
                ],
              )),
          Container(
              color: Theme.of(context).primaryColor,
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  itemCount: productlist.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height - 200),
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Stack(children: <Widget>[
                          Column(children: <Widget>[
                            Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(productlist[index]
                                                ["image"]))))),
                            Text(productlist[index]["name"]),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 7),
                                child: Text(
                                  productlist[index]["name"],
                                  style: TextStyle(fontSize: 12),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("\u20B9" + '1,54,748',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("\u20B9" + '1,54,748',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10)),
                              ],
                            ),
                            ButtonTheme(
                                minWidth: 200.0,
                                height: 28.0,
                                buttonColor: Theme.of(context).primaryColor,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Text(
                                      "REQUEST A CALLBACK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetail()));
                                    }))
                          ]),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Image.asset(
                              "assets/images/product/Bell_Icon.png",
                              height: 12,
                            ),
                          ),
                        ]));
                  }))
        ],
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(vertical: 8),
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  filter({
                    "name": "100%\nCertified",
                    "image": "assets/images/product/certified.png",
                    "size": 12.0
                  }),
                  filter({
                    "name": "100%\nRefund",
                    "image": "assets/images/product/return.png",
                    "size": 12.0
                  }),
                  filter({
                    "name": "Free\nshipping",
                    "image": "assets/images/product/Free_Shipp.png",
                    "size": 12.0
                  }),
                ]),
          ))
    ]));
  }
}

Widget filter(data) {
  return FlatButton.icon(
    icon: Image.asset(
      data["image"],
      height: 18,
    ),
    label: Text(
      data["name"],
      style: TextStyle(color: Colors.black, fontSize: data["size"]),
    ),
    onPressed: () {},
  );
}
