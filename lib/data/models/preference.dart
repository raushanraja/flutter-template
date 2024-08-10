import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'preference.g.dart';

enum LocaleEnum { en, hi }

@Collection()
class Preference {
  final Id id = 1;
  bool loggedIn = false;

  @enumerated
  LocaleEnum locale = LocaleEnum.en;

  @enumerated
  ThemeMode themeMode = ThemeMode.dark;

  Preference(this.loggedIn, this.themeMode, this.locale);

  Preference.defaults()
      : loggedIn = false,
        themeMode = ThemeMode.system,
        locale = LocaleEnum.en;

  Locale localeValue() {
    switch (locale) {
      case LocaleEnum.en:
        return const Locale('en');
      case LocaleEnum.hi:
        return const Locale('hi');
    }
  }

  LocaleEnum localeEnum(Locale locale) {
    if (locale == const Locale('en')) {
      return LocaleEnum.en;
    } else {
      return LocaleEnum.hi;
    }
  }
}
