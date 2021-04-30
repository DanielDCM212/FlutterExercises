import 'package:flutter/material.dart';
import 'package:exercise_3/src/providers/menu_provider.dart';
import 'package:exercise_3/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _buildItemsList(snapshot.data, context),
        );
      },
    );

    // return
  }

  List<Widget> _buildItemsList(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);
          //
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }
}
