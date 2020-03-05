import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  String circleType;

  Circle(this.circleType);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Text(circleType),
      ),
      decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(
              width: 10, color: Colors.white, style: BorderStyle.solid),
          shape: BoxShape.circle),
    );
  }
}
