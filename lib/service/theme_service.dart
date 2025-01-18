import 'package:flutter/material.dart';
import 'package:pmanchu_v2/theme/foundation/color.dart';
import 'package:pmanchu_v2/theme/foundation/theme.dart';
import 'package:pmanchu_v2/theme/foundation/typo.dart';
import 'package:pmanchu_v2/theme/light_theme.dart';
import 'package:provider/provider.dart';

class ThemeService with ChangeNotifier {
  ThemeService({
    AppTheme? theme,
  }) : currentTheme = theme ?? LightTheme();

  AppTheme currentTheme;

  set theme(AppTheme newTheme) {
    if (newTheme.runtimeType == currentTheme.runtimeType) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: currentTheme.color.system2,
      appBarTheme: AppBarTheme(
        backgroundColor: currentTheme.color.system2,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(
          size: 24
        )
      )
    );
  }
}

extension ThemeServiceExt on BuildContext {
  ThemeService get themeService => watch<ThemeService>();
  AppTheme get theme => themeService.currentTheme;
  Palette get color => theme.color;
  Typo get typo => theme.typo;
}