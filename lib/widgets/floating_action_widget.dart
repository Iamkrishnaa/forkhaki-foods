import 'package:flutter/material.dart';

class FloatingWidget extends StatefulWidget {
  const FloatingWidget({Key? key}) : super(key: key);

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
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 100,
            child:  FloatingActionButton(
                splashColor: Colors.blueGrey,
                backgroundColor: Colors.red,
                child:  const Icon(
                  Icons.shopping_cart,
                  size: 35,
                ),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
          ),
          counter != 0
              ?  Positioned(
                  right: 13,
                  top: 10,
                  child:  Container(
                    padding: const EdgeInsets.all(2),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints:  const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    child: Text(
                      '$counter',
                      style:  const TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              :  const  SizedBox(),
        ],
      ),
    );
  }
}
