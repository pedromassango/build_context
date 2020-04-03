![Logo](resources/logo.png)

# build_context

Access most used properties in your `BuildContext` instance.
This package rely on Dart's extension to provide a easy access for the most used properties and functions that depends on the `BuildContext` instance.

# Available Extensions
This package is updated frequently to add more extensions, 
bellow you can see the currently available extensions in the latest version.

#### From the `MediaQuery`. Access properties right in the `context` instance. Available extensions:

- [x] `context.mediaQuerySize`
- [x] `context.orientation`
- [x] `context.mediaQueryPadding`
- [x] `context.alwaysUse24HourFormat`
- [x] `context.devicePixelRatio`
- [x] `context.platformBrightness`
- [x] `context.textScaleFactor`

#### From the `Navigator` class. Navigate with ease. Available extensions:

- [x] `context.push()`
- [x] `context.pop()`
- [x] `context.canPop()`
- [x] `context.pushNamed()`
- [x] `context.popUntil()`

#### From the `Theme` class. Access your themes right in the `context` instance. Available extensions:

- [x] `context.textTheme`
- [x] `context.primaryTextTheme`
- [x] `context.accentTextTheme`
- [x] `context.bottomAppBarTheme`
- [x] `context.bottomSheetTheme`
- [x] `context.appBarTheme`
- [x] `context.backgroundColor`
- [x] `context.primaryColor`
- [x] `context.buttonColor`
- [x] `context.scaffoldBackgroundColor`

#### From `Scaffold` class. Handle your scaffold in their `context`. 
Note: those must be called in the context of a `Scaffold` widget otherwise you might have errors.

- [x] `context.openDrawer()`
- [x] `context.openEndDrawer()`
- [x] `context.showSnackBar()`
- [x] `context.hideCurrentSnackBar()`
- [x] `context.removeCurrentSnackBar()`
- [x] `context.showBottomSheet()`

# Install

Add it in your `pubspec.yaml`:

````yaml
dependencies:
  build_context: ^0.0.1
````

Import it where you want to use it e.g, in your widget's file.

```dart
import "package:build_context/build_context.dart";
```

Here is an usage example:

```dart
import 'package:flutter/material.dart';
import "package:build_context/build_context.dart";

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor, // There is no Theme.of(context)
      body: Center(
        child: GestureDetector(
          onTap: () => context.pushNamed('/detailsPage'), // we use only context not Navigator.of(context)
          child: Text(
            'Press Me',
            style: context.primaryTextTheme.title, // we use only context not Theme.of(context)
          ),
        ),
      ),
    );
  }
}
```

# Support
You liked this package? then give it a star. If you want to help then:

- [x] Start this repository
- [x] Send a Pull Request with new features
- [x] Share this package
- [x] Create issues if you find a Bug or want to suggest something