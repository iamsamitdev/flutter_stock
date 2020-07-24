import 'package:flutter/material.dart';
import 'package:flutter_stock/screens/home/home_screen.dart';
import 'package:flutter_stock/screens/login/login_screen.dart';
import 'package:flutter_stock/screens/media_query/media_layout.dart';
import 'package:flutter_stock/screens/media_query/media_query.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => LoginScreen()
};