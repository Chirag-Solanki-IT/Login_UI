import 'package:flutter/material.dart';
import 'package:login_sample/presentation/my_flutter_app_icons.dart';

class MyCheckBoxWithText extends StatefulWidget {
  String text;

  MyCheckBoxWithText(this.text);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCheckBoxState(text);
  }
}

class MyCheckBoxState extends State<MyCheckBoxWithText> {
  bool _monVal = false;
  String _text;

  MyCheckBoxState(String text){
    this._text=text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(left: 15, top: 5, bottom: 5),
      child: InkWell(
        onTap: checkChanged,
        child: Row(
          children: <Widget>[
            IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(_monVal
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked)),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(_text, style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }

  void checkChanged() {
    setState(() {
      _monVal = !_monVal;
    });
  }
}
