import 'package:flutter/material.dart';
import 'package:saveone_app/constants.dart';
import 'package:saveone_app/screens/zone/zone_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Kanit",
        scaffoldBackgroundColor: kBlackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: ZoneScreen(),
    );
  }
}
