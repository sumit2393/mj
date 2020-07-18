import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final productlist;
  final sideicon;

  ProductList(this.productlist, this.sideicon);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Stack(children: <Widget>[
                Column(children: <Widget>[
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      productlist[index]["image"]))))),
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
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             ProductDetail()));
                          }))
                ]),
                Positioned(
                  top: 0,
                  right: 0,
                  child: sideicon,
                ),
              ]));
        });
  }
}
