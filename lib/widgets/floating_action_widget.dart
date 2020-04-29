import 'package:flutter/material.dart';

class FloatingWidget extends StatefulWidget {
  static int count = 0;
  @override
  _FloatingWidgetState createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Stack(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: new FloatingActionButton(
                splashColor: Colors.blueGrey,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.shopping_cart,
                  size: 35,
                ),
                onPressed: () {
                  setState(() {
                    FloatingWidget.count++;
                  });
                }),
          ),
          counter != 0
              ? new Positioned(
                  right: 13,
                  top: 10,
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
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : new Container(),
        ],
      ),
    );
  }
}
