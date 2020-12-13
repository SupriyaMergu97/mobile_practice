import 'package:flutter/material.dart';
import 'package:service/Screens/home.dart';
// import 'package:service/components/dropdown.dart';
// import 'package:service/hello.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

// body: currentScreen == 'body' ? Body() : SignUp(),
