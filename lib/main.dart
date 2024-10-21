import 'package:flutter/material.dart';
import 'package:providers2/homescreen.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Mains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Provider"),
        ),
        body: Center(
          child: Text("Hi"),
        ));
  }
}
