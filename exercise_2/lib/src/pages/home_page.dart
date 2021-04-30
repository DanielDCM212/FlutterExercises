import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 25.0);
  int _counter = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de Clicks!'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Numero de clicks', style: textStyle),
            Text('$_counter', style: textStyle)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
