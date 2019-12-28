import 'package:campus_market_app/widget/ImageCards.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Explore"),
        actions: <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      drawer:Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
//        accountEmail: ,
//         accountName: ,
              ),
              ListTile(
                title:Text("Explore"),
                trailing:Icon(Icons.arrow_forward),
                onTap: (){},
              ),
              ListTile(
                title:Text("Categories"),
                trailing:Icon(Icons.arrow_forward),
                onTap: (){},
              ),
              ListTile(
                title:Text("My Profile"),
                trailing:Icon(Icons.arrow_forward),
                onTap: (){},
              ),
              ListTile(
                title: Text("About us"),
                trailing:Icon(Icons.arrow_forward),
                onTap: (){},
              ),
            ],
          )
      ) ,
      body: Container(
          padding: EdgeInsets.all(4.0),
          child: ImageCards()),

    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}