import 'package:flutter/material.dart';

class FloatingWidget extends StatefulWidget {
  @override
  _FloatingWidgetState createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  static int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Stack(
          children: <Widget>[
            Center(
              child: new IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  }),
            ),
            counter != 0
                ? new Positioned(
                    right: 10,
                    top: 13,
                    child: new Container(
                      padding: EdgeInsets.all(2),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : new Container(),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
