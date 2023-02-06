
import 'package:currencies_convertor/views/Screens/Global.dart';
import 'package:currencies_convertor/views/Screens/Home_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (Globals.isIos == true)
        ? const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
        : MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}