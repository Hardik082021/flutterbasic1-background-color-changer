import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Backgroun App',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Random background changer '),
          ),
          body: Homepage(),
        ));
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  var colors = [
    Colors.amber,
    Colors.accents,
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.black,
    Colors.orange,
    Colors.lightGreen
  ];
  var colorButton = [
    Colors.white,
    Colors.black,
    Colors.red,
    Colors.orange,
    Colors.lightBlue,
    Colors.green,
    Colors.orange,
    Colors.yellow,
    Colors.purple
  ];
  var currentColor = Colors.white;
  var currentColorButton = Colors.black;

  setRandomColor() {
    var rnd = Random().nextInt(8);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  setRandomColorbutton() {
    var rnd2 = Random().nextInt(8);
    setState(() {
      currentColorButton = colorButton[rnd2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: currentColor,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              setRandomColor();
              setRandomColorbutton();
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: currentColorButton,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text(
              'change it ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            splashColor: Colors.blue,
          ),
        ));
  }
}
