import 'package:flutter/material.dart';
import 'package:npplusplus_test1/circle.dart';
import 'package:npplusplus_test1/clipart.dart';
import 'package:npplusplus_test1/rectangle.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<String> shapeTypes = ['Circle', 'Rectangle', 'ClipArt'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Np++ Flutter Test',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'NP++ Flutter Test1',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text(
                  'Refresh',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    index++;
                    if (index >=3) {
                      index = 0;
                    }
                  });
                }),
            Padding(
              padding: EdgeInsets.all(30),
              child: textShape(
                shapeType: shapeTypes.elementAt(index),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget textShape({String shapeType}) {
  switch (shapeType) {
    case 'Circle':
      return Circle(shapeType);
      break;
    case 'Rectangle':
      return Rectangle(shapeType);
      break;
    case 'ClipArt':
      return ClipArt(shapeType);
      break;
  }
}
