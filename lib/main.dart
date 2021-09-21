import 'package:flutter/material.dart';
import 'package:login_sample/Strings.dart';
import 'package:login_sample/verify_email.dart';
import 'package:login_sample/widget/Background.dart';
import 'package:login_sample/widget/MyButton.dart';
import 'package:login_sample/widget/MyCheckBoxWithText.dart';
import 'package:login_sample/widget/TextFormFieldWidget.dart';
import 'package:login_sample/widget/TextViewWithTwoColor.dart';

void main() => runApp(new MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              title: TextStyle(color: Color.fromRGBO(0, 230, 118, 1)))),
      home: MyLoginSample(),
    ));

class MyLoginSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLoginState();
  }
}

class MyLoginState extends State<MyLoginSample> {
  bool _value1 = false;

  void valueChanged(bool _value1) {
    debugPrint('$_value1');
    setState(() {
      _value1 = _value1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(Strings.app_name.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
              new TextFormFieldWidget(Icons.email, Strings.email),
              new TextFormFieldWidget(Icons.lock, Strings.password),
              new MyCheckBoxWithText("Keep me logged in."),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => VerifyEmail()));
                  },
                  child: new MyButton("Login")),
              new TextViewWithTwoColor("Forget Password ? ", " Recover here")
            ],
          )
        ],
      ),
    );
  }
}
