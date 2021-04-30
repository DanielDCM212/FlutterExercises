import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _buildItems(),
        children: _buildItemsShort(),
      ),
    );
  }

  // List<Widget> _buildItems() {
  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _buildItemsShort() {
    return opciones.map((opt) {
      return Column(
        children: [
          ListTile(
            title: Text(opt),
            subtitle: Text('Subtitle ' + opt.toLowerCase()),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
