import 'package:flutter/material.dart';
import 'package:forkhakifoods/pages/HomePage.dart';

class FlashSell extends StatefulWidget {
  @override
  _FlashSellState createState() => _FlashSellState();
}

class _FlashSellState extends State<FlashSell> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Flash Sell",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Text("Resturants"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Text("Liquors"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Text("Bakeries"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Text("Organic"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Text("Refreshment"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
