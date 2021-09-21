import 'package:flutter/material.dart';
import 'package:login_sample/Strings.dart';
import 'package:login_sample/widget/MyButton.dart';
import 'package:login_sample/widget/TextViewWithTwoColor.dart';

class VerifyEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new VerifyEmailState();
  }
}

class VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        extendBody: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              "assets/app_logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 10),
            Text(Strings.app_name.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Text(
                Strings.Hi_SABY,
                style: TextStyle(color: Colors.black),
              ),
            ),
            MyButton(
              "Verify Login".toUpperCase(),
            ),
            TextViewWithTwoColor("Questions? Email us at", "Contact@facio.com")
          ],
        ));
  }
}
