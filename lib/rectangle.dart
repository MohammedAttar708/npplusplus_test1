import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final String rectangleType;

  Rectangle(this.rectangleType);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Text(rectangleType),
      ),
      decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(
              width: 10, color: Colors.white, style: BorderStyle.solid),

          shape: BoxShape.rectangle),
    );
  }
}
