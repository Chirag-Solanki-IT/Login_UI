import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(backgroundColor: Color.fromRGBO(0, 0, 0, 0.8)));
  }
/* @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                "assets/background.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.8),
        )
      ],
    );
  }*/
}
