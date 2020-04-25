import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForkhakiFoods(),
  ));
}

class ForkhakiFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Forkhaki Foods"),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(),
    );
  }
}
