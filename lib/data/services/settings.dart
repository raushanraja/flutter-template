import 'package:flutter/material.dart';

import '../models/settings.dart';

class SettingsProvider extends ChangeNotifier {
  final Settings settings = Settings.defaults();

  void updateTheme(ThemeMode themeMode) {
    settings.thememode = themeMode;
    notifyListeners();
  }

  void updateLocale(Locale locale) {
    settings.locale = locale;
    notifyListeners();
  }

  void reset() {
    settings.thememode = ThemeMode.system;
    settings.locale = const Locale('en', 'US');
    notifyListeners();
  }
}
