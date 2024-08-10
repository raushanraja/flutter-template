import 'package:flutter/material.dart';

import '../models/preference.dart';
import 'isar_service.dart';

class PreferenceService {
  IsarService iServ = IsarService();

  Future<void> savePreference(Preference pref) async {
    final db = await iServ.openDB();
    await db.writeTxn(() async {
      await db.preferences.put(pref);
    });
  }

  Future<Preference> getPreference() async {
    final db = await iServ.db;
    final preference = await db.preferences.get(1);

    if (preference == null) {
      await savePreference(Preference.defaults());
      return Preference.defaults();
    }

    return preference;
  }

  Future<void> loadSettings() async {
    await getPreference();
  }
}

class PrefereceProvider with ChangeNotifier {
  final PreferenceService prefService = PreferenceService();
  Preference _preference = Preference.defaults();
  Locale get locale => _preference.localeValue();

  Preference get preference => _preference;

  void updatePreference(Preference pref) {
    _preference = pref;
    prefService.savePreference(pref);
    notifyListeners();
    print('Preference updated');
  }

  void setTheme(ThemeMode themeMode) {
    final pref = _preference;
    pref.themeMode = themeMode;
    updatePreference(pref);
    print('Theme set to $themeMode');
  }

  void setLocale(Locale locale) {
    final pref = _preference;
    pref.locale = pref.localeEnum(locale);
    updatePreference(pref);
    print('Locale set to $locale');
  }

  Future<void> loadPreference() async {
    _preference = await prefService.getPreference();
  }
}
