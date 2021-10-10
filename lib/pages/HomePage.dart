import 'package:flutter/material.dart';
import 'package:forkhakifoods/widgets/categories_widget.dart';
import 'package:forkhakifoods/widgets/crousel_widget.dart';
import 'package:forkhakifoods/widgets/flash_sale_widget.dart';
import 'package:forkhakifoods/widgets/floating_action_widget.dart';

/// home page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forkhaki Foods"),
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
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('test@test.com'),
                accountName: Text('Test Name'),
                decoration: BoxDecoration(
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
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text("T"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  title: Text("Profile"),
                  trailing: Icon(Icons.person),
                  onTap: () {}),
              ListTile(
                title: Text("Delivery Address"),
                trailing: Icon(Icons.location_on),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ExpansionTile(
                trailing: Icon(Icons.local_offer),
                title: Text("Offers & Promotions"),
                children: const <Widget>[
                  ListTile(
                    title: Text("Refer Offer"),
                    trailing: Icon(Icons.attach_money),
                  ),
                ],
              ),
              ListTile(
                title: Text("My Orders"),
                trailing: Icon(Icons.shopping_cart),
              ),
              ListTile(
                title: Text("WishList"),
                trailing: Icon(Icons.shopping_basket),
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                title: Text("Log Out"),
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
              FlashSale(),
            ],
          ),
        ),
        floatingActionButton: FloatingWidget());
  }
}

class FoodSearch extends SearchDelegate<String?> {
  final foods = [
    "Pizza",
    "MoMo",
    "Chowmin",
    "pizza",
    "momo",
    "chowmin",
    "Burger",
    "burger",
    "Sausage",
    "sausages"
  ];
  final recentFood = ["Pizza", "burger"];
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
