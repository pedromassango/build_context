import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';

import 'pages/focus_scope.dart';
import 'pages/form.dart';

void main() => runApp(MyApp());

class Routes {
  static const focusScope = '/focusScopePage';
  static const form = '/formPage';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white24,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.blue),
        ),
      ),
      home: HomePage(),
      routes: {
        Routes.focusScope: (_) => FocusScopePage(),
        Routes.form: (_) => FormPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MaterialButton(
                onPressed: () => context.pushNamed(Routes.form),
                child: Text(
                  'Form Example',
                  style: context.primaryTextTheme.headline6,
                ),
              ),
              MaterialButton(
                onPressed: () => context.pushNamed(Routes.focusScope),
                child: Text(
                  'Focus Scope Example',
                  style: context.primaryTextTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
