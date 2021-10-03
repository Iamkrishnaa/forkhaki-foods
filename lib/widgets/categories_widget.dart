import 'package:flutter/material.dart';

class FoodCategories extends StatefulWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  _FoodCategoriesState createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
        margin: const EdgeInsets.all(0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                "Catagories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 50,
                          child: Image.network(
                            'https://www.pngkey.com/png/full/44-448827_restaurant-computer-icons-buffet-table-cafe-restaurant-table.png',
                            width: 70,
                          ),
                        ),
                        const Text("Resturants"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 50,
                          child: Image.network(
                            'http://getdrawings.com/free-icon-bw/alcohol-icon-13.png',
                            width: 70,
                          ),
                        ),
                        const Text("Liquors"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 50,
                          child: Image.network(
                            'https://static.thenounproject.com/png/86487-200.png',
                            width: 70,
                          ),
                        ),
                        const Text("Bakeries"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 50,
                          child: Image.network(
                            'https://image.flaticon.com/icons/png/512/58/58209.png',
                            width: 70,
                          ),
                        ),
                        const Text("Organic"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 50,
                          child: Image.network(
                            'https://image.flaticon.com/icons/png/512/27/27211.png',
                            width: 70,
                          ),
                        ),
                        const Text("Refreshment"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ]);
  }
}
