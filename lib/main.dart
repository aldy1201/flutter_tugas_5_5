import 'package:flutter/material.dart';
import 'pages/get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grocery App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GetStartedPage(),
    );
  }
}