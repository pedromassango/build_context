
## [2.0.1] - 23/04/2020.

* `context.pop()` param value is now optional

## [2.0.0] - 23/04/2020.

This is a breaking change for users of the bellow functions:

* `context.pop()` now returns void as the default function (Flutter 1.17.0)
* `context.unfocus()` now receive [UnfocusDisposition] as optional argument (Flutter 1.17.0)

## [1.1.1] - 23/04/2020.

Reasons to removeCurrentSnackBar and hideCurrentSnackBar are now optional as in the default implementation

## [1.1.0] - 23/04/2020.

* Added support for:

* `context.focusScope.hasFocus`
* `context.focusScope.isFirstFocus`
* `context.focusScope.canRequestFocus`
* `context.focusScope.hasPrimaryFocus`


* `context.focusScope.unfocus()`
* `context.focusScope.nextFocus()`
* `context.focusScope.requestFocus()`
* `context.focusScope.previousFocus()`
* `context.focusScope.setFirstFocus()`
* `context.focusScope.consumeKeyboardToken()`

## [1.0.0] - 21/04/2020.

Added support for:

* `context.mediaQueryShortestSide`
* `context.isPhone`
* `context.isTablet`
* `context.isSmallTablet`
* `context.isLargeTablet`

## [0.0.5] - 07/04/2020.

* Code format

## [0.0.4] - 04/04/2020.

Added support for:

* `context.form.validate()`
* `context.form.reset()`
* `context.form.save()`

## [0.0.3] - 03/04/2020.

Added support for:

* `context.isLandscape`
* `context.isPortrait`
* `context.mediaQueryViewInsets`
* `context.mediaQueryViewPadding`

## [0.0.2] - 03/04/2020.

* Fixed README.md format issue

## [0.0.1] - 02/04/2020.

Added support for the following classes: 

* `MediaQuery`
* `Theme`
* `Navigator`
* `Scaffold`
