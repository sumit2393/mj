import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_app_mbj/Screen/SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.red.withOpacity(0.3), BlendMode.colorBurn)),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "MOBILE NUMBER",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decorationStyle: TextDecorationStyle.solid,
                ),
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                maxLength: 10,
                decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.mobile_screen_share,
                      color: Colors.white,
                      size: 30,
                    ),
                    enabledBorder: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: Colors.white)),
                    counterText: '',
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.white),
                    hintText: "+91",
                    fillColor: Color.fromRGBO(140, 0, 0, 0.1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50, right: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'We will send you an ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'One Time Password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' on this phone number.',
                        ),
                      ]),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 160, right: 160),
                child: Divider(
                  color: Colors.white,
                  thickness: 5,
                )),
            SizedBox(
              height: 20,
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Signup()));
                // Navigator.pushNamed(context,Signup().toString());
              },
              child: Text(
                "Go to register page",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                child: Container(
                  width: screenWidth / 1.40,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Continue',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginMobileOTPScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginMobileOTPScreen extends StatefulWidget {
  @override
  _LoginMobileOTPScreenState createState() => _LoginMobileOTPScreenState();
}

class _LoginMobileOTPScreenState extends State<LoginMobileOTPScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.3), BlendMode.colorBurn)),
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Enter 4 Digit Otp",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              PinEntryTextField(
                showFieldAsBox: true,
                fields: 4,
                onSubmit: (String pin) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Pin"),
                          content: Text('Pin entered is $pin'),
                        );
                      }); //end showDialog()
                }, // end onSubmit
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Resend OTP",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 160, right: 160),
                  child: Divider(
                    color: Colors.white,
                    thickness: 5,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Container(
                    width: screenWidth / 1.40,
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Continue',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginMobileOTPScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinEntryTextField extends StatefulWidget {
  final String lastPin;
  final int fields;
  final ValueChanged<String> onSubmit;
  final num fieldWidth;
  final num fontSize;
  final bool isTextObscure;
  final bool showFieldAsBox;

  PinEntryTextField(
      {this.lastPin,
      this.fields: 4,
      this.onSubmit,
      this.fieldWidth: 40.0,
      this.fontSize: 20.0,
      this.isTextObscure: false,
      this.showFieldAsBox: false})
      : assert(fields > 0);

  @override
  State createState() {
    return PinEntryTextFieldState();
  }
}

class PinEntryTextFieldState extends State<PinEntryTextField> {
  List<String> _pin;
  List<FocusNode> _focusNodes;
  List<TextEditingController> _textControllers;

  Widget textfields = Container();

  @override
  void initState() {
    super.initState();
    _pin = List<String>(widget.fields);
    _focusNodes = List<FocusNode>(widget.fields);
    _textControllers = List<TextEditingController>(widget.fields);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.lastPin != null) {
          for (var i = 0; i < widget.lastPin.length; i++) {
            _pin[i] = widget.lastPin[i];
          }
        }
        textfields = generateTextFields(context);
      });
    });
  }

  @override
  void dispose() {
    _textControllers.forEach((TextEditingController t) => t.dispose());
    super.dispose();
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.fields, (int i) {
      return buildTextField(i, context, i == 0);
    });

    if (_pin.first != null) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: textFields);
  }

  void clearTextFields() {
    _textControllers.forEach(
        (TextEditingController tEditController) => tEditController.clear());
    _pin.clear();
  }

  Widget buildTextField(int i, BuildContext context, [bool autofocus = false]) {
    if (_focusNodes[i] == null) {
      _focusNodes[i] = FocusNode();
    }
    if (_textControllers[i] == null) {
      _textControllers[i] = TextEditingController();
      if (widget.lastPin != null) {
        _textControllers[i].text = widget.lastPin[i];
      }
    }

    _focusNodes[i].addListener(() {
      if (_focusNodes[i].hasFocus) {}
    });

    final String lastDigit = _textControllers[i].text;

    return Container(
      alignment: Alignment.center,
      width: widget.fieldWidth,
      margin: EdgeInsets.only(right: 10.0),
      child: TextField(
        controller: _textControllers[i],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        autofocus: autofocus,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: widget.fontSize),
        focusNode: _focusNodes[i],
        obscureText: widget.isTextObscure,
        decoration: InputDecoration(
            enabledBorder: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
                borderSide: BorderSide(color: Colors.white)),
            counterText: "",
            border: widget.showFieldAsBox
                ? OutlineInputBorder(borderSide: BorderSide(width: 5.0))
                : null),
        onChanged: (String str) {
          setState(() {
            _pin[i] = str;
          });
          if (i + 1 != widget.fields) {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            } else {
              FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
            }
          } else {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            }
          }
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
        onSubmitted: (String str) {
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textfields;
  }
}
