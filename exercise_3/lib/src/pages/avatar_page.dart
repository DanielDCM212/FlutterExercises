import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.dccomics.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg',
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(
          'https://www.ecccomics.com/content/productos/5361/PORTADA_JPG_WEB_batman_justicia_ciega.jpg',
        ),
        fadeInDuration: Duration(milliseconds: 200),
        fit: BoxFit.cover,
      ),
    );
  }
}
