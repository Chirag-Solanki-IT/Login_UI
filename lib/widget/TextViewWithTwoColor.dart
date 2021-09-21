import 'package:flutter/material.dart';

class TextViewWithTwoColor extends StatefulWidget {
  String firstText;
  String secondText;

  TextViewWithTwoColor(this.firstText, this.secondText);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TextViewWithTwoColorState(firstText, secondText);
  }
}

class TextViewWithTwoColorState extends State<TextViewWithTwoColor> {
  String firstText;
  String secondText;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            firstText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          new Text(
            secondText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.title.copyWith(),
          )
        ],
      ),
    );
  }

  TextViewWithTwoColorState(this.firstText, this.secondText);
}
