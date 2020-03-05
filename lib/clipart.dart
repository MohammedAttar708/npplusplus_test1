import 'package:flutter/material.dart';

class ClipArt extends StatelessWidget {
  final String clipArtType;

  ClipArt(this.clipArtType);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Text(clipArtType),
      ),
      decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(
              width: 10, color: Colors.white, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(40),
          shape: BoxShape.rectangle),
    );
  }
}
