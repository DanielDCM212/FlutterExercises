import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = TextStyle(fontSize: 25.0);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador de Tabs!'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Numero de Tabs', style: _textStyle),
              Text('$_counter', style: _textStyle)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: _crearButtons());
  }

  Widget _crearButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _setZero,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _remove,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 0.0,
        )
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() => _counter--);
  }

  void _setZero() {
    setState(() => _counter = 0);
  }
}
