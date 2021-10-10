import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  _FlashSaleState createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
        elevation: 0.0,
        margin: const EdgeInsets.all(0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Flash Sale",
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
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
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[400],
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://i.ytimg.com/vi/7tdUCk9pLPw/maxresdefault.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[400],
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://wallpaperaccess.com/full/866656.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[400],
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://i.ytimg.com/vi/7tdUCk9pLPw/maxresdefault.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[400],
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://wallpaperaccess.com/full/866656.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.grey[400],
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://i.ytimg.com/vi/7tdUCk9pLPw/maxresdefault.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(),
                        ],
                      ),
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
