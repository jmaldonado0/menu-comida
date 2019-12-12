import 'package:flutter/material.dart';
import 'package:r00412247/LoginPage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Cuisine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Nunito',
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: LoginPage(),
      routes: routes,
    );
  }
}

