//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../provider/httpservices.dart';

class ProductList extends StatelessWidget {
  final productlist;
  final sideicon;
  final userid;

  ProductList(this.productlist, this.sideicon, this.userid);

  requestCall(productid) {
    requestCallback(productid, userid).then((value) => {
          if (value["status"] == "success")
            {registerToast(value["data"]["message"])}
          else
            {registerToast("Something went wrong")}
        });
  }

  registerToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Color(0xFF670e1e),
        textColor: Colors.white);
  }

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
                                      "assets/images/dummynecklace.jpeg"))))),
                  Text(productlist[index].product.name),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        productlist[index].product.name,
                        style: TextStyle(fontSize: 12),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                          "\u20B9" +
                              productlist[index].product.tagPrice.toString(),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                          "\u20B9" +
                              productlist[index].product.price.toString(),
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
                            requestCall(productlist[index].product.id);
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
