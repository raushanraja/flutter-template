import 'package:flutter/material.dart';

class Settings {
  ThemeMode thememode;
  Locale locale;

  Settings({required this.thememode, required this.locale});

  Settings.defaults()
      : thememode = ThemeMode.system,
        locale = const Locale('en', 'US');
}
