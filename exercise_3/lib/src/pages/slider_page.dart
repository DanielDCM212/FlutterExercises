import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  // SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _slideValue1 = 100.0;
  bool _lockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10.0,
        ),
        child: Column(
          children: <Widget>[
            _buildSlider(),
            _buildCheckBox(),
            _buildSwitch(),
            Expanded(
              child: _buildImage(),
            ),
          ],
        ),
      ),
    );
  }

  Slider _buildSlider() {
    return Slider(
      label: 'Image Size',
      value: _slideValue1,
      min: 100.0,
      max: 400.0,
      onChanged: (_lockCheck)
          ? null
          : (value) {
              setState(() {
                _slideValue1 = value;
              });
            },
    );
  }

  Widget _buildImage() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      width: _slideValue1,
      image: NetworkImage(
        'https://static.wikia.nocookie.net/lotr/images/9/98/SmaugDestroyingLakeTownCropped.jpg/revision/latest?cb=20160721034440',
      ),
      fit: BoxFit.contain,
    );
  }

  Widget _buildCheckBox() {
    // return Checkbox(
    //   value: _lockCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _lockCheck = value;
    //     });
    //   },
    // );
    //
    return CheckboxListTile(
      title: Text('Block Slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    );
  }

  Widget _buildSwitch() {
    return SwitchListTile(
      title: Text('Block Slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    );
  }
}
