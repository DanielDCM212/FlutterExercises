import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alert Page"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Show me an alert'),
            onPressed: () => _showAlert(context),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: StadiumBorder(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ));
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Contenido'),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
