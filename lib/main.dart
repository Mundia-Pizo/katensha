import 'package:flutter/material.dart';
//ignore:unused_import
import 'package:katensha/screens/login.dart';
import 'package:katensha/screens/payment.dart';
import 'package:katensha/screens/splash.dart';


void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp( {Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );// this is the problem   
  }
}


