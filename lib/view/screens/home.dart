import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/preference.dart';
import '../../data/services/preference.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final prefProvider = context.watch<PrefereceProvider>();
    final preference = prefProvider.preference;

    if (!preference.loggedIn) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              prefProvider.updatePreference(
                Preference(
                  true,
                  ThemeMode.system,
                  LocaleEnum.en,
                ),
              );
            },
            child: const Text('Login'),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            prefProvider.updatePreference(
              Preference(
                false,
                ThemeMode.system,
                LocaleEnum.en,
              ),
            );
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
