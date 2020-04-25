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
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: new Text('test@test.com'),
              accountName: new Text('Test Name'),
            ),
            ListTile(
              title: new Text("Home"),
              trailing: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
