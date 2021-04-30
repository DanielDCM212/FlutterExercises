import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'registro': Icons.app_registration,
  'animation': Icons.animation,
  'input': Icons.input,
  'slide': Icons.slideshow,
  'list': Icons.list,
};

Icon getIcon(String iconString) {
  return Icon(
    _icons[iconString],
    color: Colors.blue,
  );
}
