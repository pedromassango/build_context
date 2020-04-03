import 'package:flutter/material.dart';

import 'package:build_context/build_context.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white24,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.blue)
        )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () => context.pushNamed('/detailsPage'),
          child: Text(
            'Press Me',
            style: context.primaryTextTheme.title,
          ),
        ),
      ),
    );
  }
}
