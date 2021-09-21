import 'package:flutter/material.dart';

import '../verify_email.dart';

class MyButton extends StatefulWidget {
  String _text;

  MyButton(this._text);

  @override
  State<StatefulWidget> createState() {
    return new MyButtonState(_text);
  }
}

class MyButtonState extends State<MyButton> {
  String _text;

  MyButtonState(this._text);

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: new Container(
              padding: EdgeInsets.only(top: 18, bottom: 18),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromRGBO(0, 230, 118, 1), blurRadius: 20)
                ],
                color: Color.fromRGBO(0, 230, 118, 1),
                borderRadius: new BorderRadius.circular(8.0),
              ),
              child: Text(_text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15)),
            ),
          ),
        )
      ],
    );
  }
}
