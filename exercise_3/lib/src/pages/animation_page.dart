import 'package:flutter/material.dart';
import 'dart:math';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _boderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Page'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _boderRadius,
          ),
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeState,
      ),
    );
  }

  void _changeState() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );

      _boderRadius = BorderRadius.circular(
        random.nextInt(100).toDouble(),
      );
    });
  }
}
