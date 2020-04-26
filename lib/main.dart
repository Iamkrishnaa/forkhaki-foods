import 'package:flutter/material.dart';
import 'package:forkhakifoods/pages/HomePage.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForkhakiFoods(),
  ));
}

class ForkhakiFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
