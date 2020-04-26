import 'package:flutter/material.dart';
import 'package:forkhakifoods/widgets/catagories_widget.dart';
import 'package:forkhakifoods/widgets/crousel_widget.dart';
import 'package:forkhakifoods/widgets/flash_sell_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: new AppBar(
          title: new Text("Forkhaki Foods"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                showSearch(context: context, delegate: FoodSearch());
              },
            ),
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: new Text('test@test.com'),
                accountName: new Text('Test Name'),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),

                  //use below codes to use shadow around header
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.grey,
//                    blurRadius: 10.0,
//                    spreadRadius: 0,
//                    offset: Offset(-5, 5),
//                  ),
//                ],
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: new Text("T"),
                ),
              ),
              ListTile(
                title: new Text("Home"),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: new Text("Profile"),
                trailing: Icon(Icons.person),
              ),
              ListTile(
                title: new Text("Delivery Address"),
                trailing: Icon(Icons.location_on),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ExpansionTile(
                trailing: Icon(Icons.local_offer),
                title: new Text("Offers & Promotions"),
                children: <Widget>[
                  ListTile(
                    title: new Text("Refer Offer"),
                    trailing: Icon(Icons.attach_money),
                  ),
                ],
              ),
              ListTile(
                title: new Text("My Orders"),
                trailing: Icon(Icons.shopping_cart),
              ),
              ListTile(
                title: new Text("WishList"),
                trailing: Icon(Icons.shopping_basket),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                title: new Text("Log Out"),
                trailing: Icon(Icons.power_settings_new),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselWidget(),
              FoodCategories(),
              FlashSell(),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
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
        ));
  }
}

class FoodSearch extends SearchDelegate<String> {
  final foods = ["Pizza", "MoMo", "Chowmin"];
  final recentFood = ["Pizza"];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on left of app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show suggestions
    final suggestionList = query.isEmpty
        ? recentFood
        : foods.where((food) => food.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.fastfood),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
