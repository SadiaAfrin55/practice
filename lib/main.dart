import 'package:flutter/material.dart';
import 'package:net_testing/page_one.dart';
import 'package:net_testing/page_three.dart';
import 'package:net_testing/page_two.dart';
import 'package:net_testing/switch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/switchPage',
      routes: {
        '/pageOne': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
        '/pageThree': (context) => PageThree(),
        '/switchPage': (context) => IssueTypeSelect(),
      },
    );
  }
}
