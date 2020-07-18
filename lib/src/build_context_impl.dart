import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// True if the current device is Phone
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// 600dp: a 7” tablet (600x1024 mdpi).
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// 720dp: a 10” tablet (720x1280 mdpi, 800x1280 mdpi, etc).
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;
}

extension NavigatorExt on BuildContext {
  @optionalTypeArgs
  Future<T> push<T>(Route<T> route) => Navigator.push<T>(this, route);

  @optionalTypeArgs
  Future<T> pushNamed<T extends Object>(String routeName, {Object arguments}) =>
      Navigator.pushNamed<T>(this, routeName, arguments: arguments);

  @optionalTypeArgs
  Future<T> pushReplacement<T extends Object, TO extends Object>(
    Route<T> newRoute, {
    TO result,
  }) =>
      Navigator.pushReplacement<T, TO>(this, newRoute, result: result);

  @optionalTypeArgs
  Future<T> pushReplacementNamed<T extends Object, TO extends Object>(
    String routeName, {
    TO result,
    Object arguments,
  }) =>
      Navigator.pushReplacementNamed<T, TO>(
        this,
        routeName,
        arguments: arguments,
        result: result,
      );

  @optionalTypeArgs
  Future<T> pushAndRemoveUntil<T extends Object>(
    Route<T> newRoute,
    RoutePredicate predicate,
  ) =>
      Navigator.pushAndRemoveUntil<T>(this, newRoute, predicate);

  @optionalTypeArgs
  Future<T> pushNamedAndRemoveUntil<T extends Object>(
    String newRouteName,
    RoutePredicate predicate, {
    Object arguments,
  }) =>
      Navigator.pushNamedAndRemoveUntil<T>(
        this,
        newRouteName,
        predicate,
        arguments: arguments,
      );

  @optionalTypeArgs
  void pop<T extends Object>([T result]) => Navigator.pop<T>(this, result);

  @optionalTypeArgs
  Future<T> popAndPushNamed<T extends Object, TO extends Object>(
    String routeName, {
    TO result,
    Object arguments,
  }) =>
      Navigator.popAndPushNamed<T, TO>(
        this,
        routeName,
        arguments: arguments,
        result: result,
      );

  bool canPop() => Navigator.canPop(this);

  @optionalTypeArgs
  Future<bool> maybePop<T extends Object>([T result]) =>
      Navigator.maybePop<T>(this, result);

  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);

  void removeRoute(Route<dynamic> route) => Navigator.removeRoute(this, route);

  void removeRouteBelow(Route<dynamic> anchorRoute) =>
      Navigator.removeRouteBelow(this, anchorRoute);

  @optionalTypeArgs
  void replace<T extends Object>({
    @required Route<dynamic> oldRoute,
    @required Route<T> newRoute,
  }) =>
      Navigator.replace<T>(this, oldRoute: oldRoute, newRoute: newRoute);

  @optionalTypeArgs
  void replaceRouteBelow<T extends Object>({
    @required Route<dynamic> anchorRoute,
    Route<T> newRoute,
  }) =>
      Navigator.replaceRouteBelow<T>(this,
          anchorRoute: anchorRoute, newRoute: newRoute);
}

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);

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

  TargetPlatform get platform => Theme.of(this).platform;

  bool get isAndroid => this.platform == TargetPlatform.android;

  bool get isIOS => this.platform == TargetPlatform.iOS;

  bool get isMacOS => this.platform == TargetPlatform.macOS;

  bool get isWindows => this.platform == TargetPlatform.windows;

  bool get isFuchsia => this.platform == TargetPlatform.fuchsia;

  bool get isLinux => this.platform == TargetPlatform.linux;
}

extension ScaffoldExt on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
          SnackBar snackbar) =>
      Scaffold.of(this).showSnackBar(snackbar);

  void removeCurrentSnackBar(
          {SnackBarClosedReason reason = SnackBarClosedReason.remove}) =>
      Scaffold.of(this).removeCurrentSnackBar(reason: reason);

  void hideCurrentSnackBar(
          {SnackBarClosedReason reason = SnackBarClosedReason.hide}) =>
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

class _Form {
  _Form(this._context);

  final BuildContext _context;

  bool validate() => Form.of(_context).validate();

  void reset() => Form.of(_context).reset();

  void save() => Form.of(_context).save();
}

extension FormExt on BuildContext {
  _Form get form => _Form(this);
}

class _FocusScope {
  const _FocusScope(this._context);

  final BuildContext _context;

  FocusScopeNode _node() => FocusScope.of(_context);

  bool get hasFocus => _node().hasFocus;

  bool get isFirstFocus => _node().isFirstFocus;

  bool get hasPrimaryFocus => _node().hasPrimaryFocus;

  bool get canRequestFocus => _node().canRequestFocus;

  void nextFocus() => _node().nextFocus();

  void requestFocus([FocusNode node]) => _node().requestFocus(node);

  void previousFocus() => _node().previousFocus();

  void unfocus({UnfocusDisposition disposition = UnfocusDisposition.scope}) =>
      _node().unfocus(disposition: disposition);

  void setFirstFocus(FocusScopeNode scope) => _node().setFirstFocus(scope);

  bool consumeKeyboardToken() => _node().consumeKeyboardToken();
}

extension FocusScopeExt on BuildContext {
  _FocusScope get focusScope => _FocusScope(this);

  void closeKeyboard() => this.focusScope.requestFocus(FocusNode());
}
