import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  // String _password = '';
  String _date = '';

  List<String> _options = ['option 1', 'option 2', 'option 3', 'opcion X'];

  String _selectOption = 'opcion X';

  TextEditingController _inputFillDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        children: <Widget>[
          _buildInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _buildDropdown(),
          Divider(),
          _buildPerson(),
        ],
      ),
    );
  }

  Widget _buildInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        counter: Text('Letras ${_name.length}'),
        labelText: 'Nombre',
        hintText: 'Daniel Danilo Cuevas Mendez',
        helperText: 'Introduce tu nombre',
        suffixIcon: Icon(Icons.keyboard),
        icon: Icon(Icons.account_circle),
        fillColor: Colors.blue,
      ),
      onChanged: (valor) {
        setState(() {
          _name = valor;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> getOptionsDropdown() {
    List<DropdownMenuItem<String>> lista = [];

    _options.forEach((element) {
      lista.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        ),
      );
    });

    return lista;
  }

  // Widget _buildDropdown() {
  //   return DropdownButton(
  //     value: _selectOption,
  //     items: getOptionsDropdown(),
  //     onChanged: (value) {
  //       setState(() {
  //         _selectOption = value;
  //       });
  //     },
  //   );
  // }
  //
  //
  Widget _buildDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all_outlined),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
            value: _selectOption,
            items: getOptionsDropdown(),
            onChanged: (value) {
              setState(() {
                _selectOption = value;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _buildPerson() {
    return ListTile(
      title: Text('Nombre es: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_selectOption),
    );
  }

  Widget _createEmail() {
    return TextField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        // counter: Text('Letras ${_name.length}'),
        labelText: 'Email',
        hintText: 'Email',
        // helperText: 'Introduce tu email',
        suffixIcon: Icon(Icons.keyboard),
        icon: Icon(Icons.email),
        fillColor: Colors.black,
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      // autofocus: true,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        // counter: Text('Letras ${_name.length}'),
        labelText: 'Password',
        hintText: 'Password',
        // helperText: 'Introduce tu email',
        suffixIcon: Icon(Icons.keyboard),
        icon: Icon(Icons.lock),
        fillColor: Colors.black,
      ),
      onChanged: (valor) {
        setState(() {
          // _password = valor;
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      controller: _inputFillDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        labelText: "Fecha de naciniento",
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.date_range_outlined),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2026),
      locale: Locale('es', ''),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFillDateController.text = _date;
      });
    }
  }
}
