import 'package:flutter/material.dart';
import 'package:forkhakifoods/pages/homepage.dart';

/// starting point of the app
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForkhakiFoods(),
  ),);
}

class ForkhakiFoods extends StatelessWidget {
  const ForkhakiFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
