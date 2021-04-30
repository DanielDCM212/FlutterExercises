import 'package:flutter/material.dart';

import 'package:exercise_3/src/pages/alert_page.dart';
import 'package:exercise_3/src/pages/avatar_page.dart';
import 'package:exercise_3/src/pages/home_page.dart';
import 'package:exercise_3/src/pages/card_page.dart';
import 'package:exercise_3/src/pages/animation_page.dart';
import 'package:exercise_3/src/pages/input_page.dart';
import 'package:exercise_3/src/pages/slider_page.dart';
import 'package:exercise_3/src/pages/list_and_scroll_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'Alert': (BuildContext context) => AlertPage(),
    'Avatar': (BuildContext context) => AvatarPage(),
    'Card': (BuildContext context) => CardPage(),
    'Animation': (BuildContext context) => AnimationPage(),
    'Inputs': (BuildContext context) => InputPage(),
    'Sliders': (BuildContext context) => SliderPage(),
    'List': (BuildContext context) => ListPage(),
  };
}
