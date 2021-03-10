Idiomas: [Inglês](README.md) | [Português do Brasil](README-pt-BR.md)

![Logo](resources/logo.png)

# BuildContext

Acesse as propriedades mais usadas na sua instância do `BuildContext`.
Este pacote se baseia na extensão do Dart para fornecer acesso fácil para as propriedades e funções mais usadas que dependem da instância do `BuildContext`.

# Extensões disponíveis
Eu atualizo este pacote com frequência para adicionar mais extensões,
abaixo você pode ver as extensões que estão atualmente disponíveis na última versão.

### Da classe `MediaQuery`. Acesse propriedades diretamente na instância do `context`. Extensões disponíveis:

- `context.mediaQuerySize`
- `context.orientation`
- `context.mediaQueryPadding`
- `context.alwaysUse24HourFormat`
- `context.devicePixelRatio`
- `context.platformBrightness`
- `context.textScaleFactor`
- `context.isLandscape`
- `context.isPortrait`
- `context.mediaQueryViewPadding`
- `context.mediaQueryViewInsets`
- `context.mediaQueryShortestSide`


- `context.isPhone`
- `context.isTablet`
- `context.isSmallTablet`
- `context.isLargeTablet`

### Da classe `Navigator`. Navegue com facilidade. Extensões disponíveis:

- `context.push()`
- `context.pop()`
- `context.canPop()`
- `context.pushNamed()`
- `context.popUntil()`

### Da classe `Theme`. Acesse seu tema diretamente na instância do `context`. Extensões disponíveis:

- `context.theme`
- `context.textTheme`
- `context.primaryTextTheme`
- `context.accentTextTheme`
- `context.bottomAppBarTheme`
- `context.bottomSheetTheme`
- `context.appBarTheme`
- `context.backgroundColor`
- `context.primaryColor`
- `context.buttonColor`
- `context.scaffoldBackgroundColor`
- `context.platform`
- `context.isAndroid`
- `context.isIOS`
- `context.isWindows`
- `context.isMacOS`
- `context.isLinux`
- `context.isFuchsia`

- `context.headline1`
- `context.headline2`
- `context.headline3`
- `context.headline4`
- `context.headline5`
- `context.headline6`
- `context.subtitle1`
- `context.bodyText1`
- `context.bodyText2`
- `context.caption`
- `context.button`
- `context.subtitle2`
- `context.overline`

### Da classe `Scaffold`. Lide com o seu Scaffold no seu `context`.
Observação: Esses devem ser chamados no contexto de um widget `Scaffold`, caso contrário, você pode ter erros.

- `context.openDrawer()`
- `context.openEndDrawer()`
- `context.showSnackBar()`
- `context.hideCurrentSnackBar()`
- `context.removeCurrentSnackBar()`
- `context.showBottomSheet()`

### Da classe `Form.of(context)`.
Observação: Esses devem ser chamados no contexto de um widget `Scaffold`, caso contrário, você pode ter erros.

- `context.form.validate()`
- `context.form.reset()`
- `context.form.save()`

### Da classe `FocusScope.of(context)`.

- `context.focusScope.hasFocus`
- `context.focusScope.isFirstFocus`
- `context.focusScope.canRequestFocus`
- `context.focusScope.hasPrimaryFocus`

- `context.focusScope.unfocus()`
- `context.focusScope.nextFocus()`
- `context.focusScope.requestFocus()`
- `context.focusScope.previousFocus()`
- `context.focusScope.setFirstFocus()`
- `context.focusScope.consumeKeyboardToken()`
- `context.closeKeyboard()`

#### Da classe `ModalRoute.of(context)`.

* `context.modalRoute`
* `context.routeSettings`

# Instalar

Adicione em seu `pubspec.yaml`:

```yaml
dependencies:
  build_context: ^3.0.0
```

Importe onde você quer usar, por exemplo, no arquivo do widget.

```dart
import "package:build_context/build_context.dart";
```

Aqui está um exemplo de uso:

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

# Apoie
Você gostou deste pacote? Então dê uma estrela. Se você quiser ajudar, então:

- Inicie este repositório
- Envie um Pull Request com novas features
- Compartilhe este pacote
- Crie issues se você encontrar um Bug ou se quiser sugerir algo