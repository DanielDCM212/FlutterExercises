import 'package:flutter/material.dart';

import 'dart:async';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = ScrollController();

  List _listNumeros = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _addToList();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _addToList();
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists and Scrolls'),
      ),
      body: Stack(
        children: <Widget>[
          _buildList(),
          _buildLoading(),
        ],
      ),
    );
  }

  Widget _buildList() {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final img = _listNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300?random=$img'),
            height: 300,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Future<void> _refresh() async {
    final duration = Duration(seconds: 2);

    Timer(duration, () {
      _listNumeros.clear();
      _lastItem++;
      _addToList();
    });

    return Future.delayed(duration);
  }

  void _addToList() {
    for (int i = 0; i < 10; i++) {
      _listNumeros.add(_lastItem++);
    }

    setState(() {});
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});
    Duration duration = Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
    _addToList();
  }

  Widget _buildLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
