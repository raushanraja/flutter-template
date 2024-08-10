import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/services/preference.dart';
import '../../widgets/buttons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          memberCountInfo(context),
          const Row(
            children: [
              Expanded(child: LocaleSelector()),
              Expanded(child: ThemeSelector()),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                logoutButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding localeSelector() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Locale"),
          const SizedBox(height: 10),
          DropdownButton<Locale>(
            value: const Locale('en', 'US'),
            onChanged: (Locale? newValue) {},
            items: const <DropdownMenuItem<Locale>>[
              DropdownMenuItem(
                value: Locale('en', 'US'),
                child: Text("English"),
              ),
              DropdownMenuItem(
                value: Locale('hi', 'IN'),
                child: Text("Hindi"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding themeSelector() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Theme Mode"),
          const SizedBox(height: 10),
          DropdownButton<ThemeMode>(
            value: ThemeMode.system,
            onChanged: (ThemeMode? newValue) {},
            items: const <DropdownMenuItem<ThemeMode>>[
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text("System"),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text("Light"),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text("Dark"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding logoutButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Center(
        child: ButtonIcon(
          buttonText: "LOGOUT",
          buttonIcon: const Icon(Icons.logout),
          onPressed: () => {print("Logout Button Clicked")},
        ),
      ),
    );
  }

  Padding memberCountInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            elevation: 0, // Adjust elevation as needed
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => {print("Button Clicked")},
                      icon: const Icon(Icons.print),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class LocaleSelector extends StatelessWidget {
  const LocaleSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Locale"),
          const SizedBox(height: 10),
          DropdownButton<Locale>(
            value: context.watch<PrefereceProvider>().locale,
            onChanged: (Locale? newValue) {
              context.read<PrefereceProvider>().setLocale(newValue!);
            },
            items: const <DropdownMenuItem<Locale>>[
              DropdownMenuItem(
                value: Locale('en'),
                child: Text("English"),
              ),
              DropdownMenuItem(
                value: Locale('hi'),
                child: Text("Hindi"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Theme Mode"),
          const SizedBox(height: 10),
          DropdownButton<ThemeMode>(
            value: context.watch<PrefereceProvider>().preference.themeMode,
            onChanged: (ThemeMode? newValue) {
              context.read<PrefereceProvider>().setTheme(newValue!);
            },
            items: const <DropdownMenuItem<ThemeMode>>[
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text("System"),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text("Light"),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text("Dark"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
