import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String texto;

  const AppWidget({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}