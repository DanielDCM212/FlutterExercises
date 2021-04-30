import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 10.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            title: Text('Targeta 1'),
            subtitle: Text('Buena tarde esta targeta es solo para probar'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            onTap: () => {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
            ],
          )
        ],
      ),
    );
  }

  final url =
      'https://www.remotelands.com/travelogues/wp-content/uploads/2015/02/Remote-Landscapes-Sights-of-Siberia.jpg';

  _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(image: NetworkImage(url)),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('HOLA COMO ESTAN'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
