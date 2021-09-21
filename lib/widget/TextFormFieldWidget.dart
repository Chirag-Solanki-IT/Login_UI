import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final IconData icon;
  var hintText;
  bool _autovalidate=false;

  TextFormFieldWidget(this.icon, this.hintText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      decoration: new BoxDecoration(
          color: Color.fromRGBO(38, 38, 38, 0.5),
          borderRadius: new BorderRadius.circular(8.0)),
      child: new TextFormField(
          obscureText: true,
          autovalidate: _autovalidate,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: IconTheme(
                  data: IconThemeData(color: Colors.white), child: Icon(icon)),
              contentPadding: EdgeInsets.all(10),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white)),
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
          cursorColor: Colors.white),
    );
  }
}
