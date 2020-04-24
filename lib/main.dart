import 'package:flutter/material.dart';
import 'widgets/crousel_widget.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForkhakiFoods(),
  ));
}

class ForkhakiFoods extends StatefulWidget {
  @override
  _ForkhakiFoodsState createState() => _ForkhakiFoodsState();
}

class _ForkhakiFoodsState extends State<ForkhakiFoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Forkhaki Foods"),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(),
      body: Container(),
    );
  }
}
