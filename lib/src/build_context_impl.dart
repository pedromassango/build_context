import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

extension NavigatorExt on BuildContext {
  Future<T> push<T>(Route<T> route) => Navigator.push(this, route);

  bool pop<T>(T result) => Navigator.pop(this, result);

  Future<Object> pushNamed<T>(String routeName, {Object arguments}) =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  bool canPop() => Navigator.canPop(this);

  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);
}

extension ThemeExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  TextTheme get accentTextTheme => Theme.of(this).accentTextTheme;

  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;

  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;

  Color get backgroundColor => Theme.of(this).backgroundColor;

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get buttonColor => Theme.of(this).buttonColor;

  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
}

extension ScaffoldExt on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
          SnackBar snackbar) =>
      Scaffold.of(this).showSnackBar(snackbar);

  void removeCurrentSnackBar(SnackBarClosedReason reason) =>
      Scaffold.of(this).removeCurrentSnackBar(reason: reason);

  void hideCurrentSnackBar(SnackBarClosedReason reason) =>
      Scaffold.of(this).hideCurrentSnackBar(reason: reason);

  void openDrawer() => Scaffold.of(this).openDrawer();

  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

  void showBottomSheet(WidgetBuilder builder,
          {Color backgroundColor,
          double elevation,
          ShapeBorder shape,
          Clip clipBehaviour}) =>
      Scaffold.of(this).showBottomSheet(builder,
          backgroundColor: backgroundColor,
          elevation: elevation,
          shape: shape,
          clipBehavior: clipBehaviour);
}
