import 'package:flutter/material.dart';
import 'package:project_test/ui/home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
    },
  ));
}
