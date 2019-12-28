import 'package:campus_market_app/Screens/Explore.dart';
import 'package:campus_market_app/Screens/Signin.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner:false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home:SignIn() ,
        routes:<String, WidgetBuilder>{
          "/Signup":(BuildContext context)=>MyHomePage(),
          "/home":(BuildContext context)=>MyHomePage(),
        }
      // home: MyHomePage(),
    );
  }
}

