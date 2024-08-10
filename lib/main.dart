import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'data/services/preference.dart';
import 'util/router.dart';

void main() async {
  final prefProvider = PrefereceProvider();
  await prefProvider.loadPreference();

  runApp(MyApp(prefProider: prefProvider));
}

class MyApp extends StatefulWidget {
  final PrefereceProvider prefProider;

  const MyApp({super.key, required this.prefProider});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => widget.prefProider,
      child: AnimatedBuilder(
        animation: widget.prefProider,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            title: 'Flutter Demos',
            restorationScopeId: 'app',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: context.watch<PrefereceProvider>().locale,
            supportedLocales: const [
              Locale('en'),
              Locale('hi'),
            ],
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.blue,
                  brightness:
                      context.watch<PrefereceProvider>().preference.themeMode ==
                              ThemeMode.dark
                          ? Brightness.dark
                          : Brightness.light),
              useMaterial3: true,
            ),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
