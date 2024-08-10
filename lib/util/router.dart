import 'package:go_router/go_router.dart';

import '../view/screens/home.dart';
import '../view/screens/settings/view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    initial(),
    setting(),
  ],
);

GoRoute initial() {
  return GoRoute(
    path: "/",
    builder: (context, state) => const MyHomePage(),
  );
}

GoRoute setting() {
  return GoRoute(
    path: "/setting",
    builder: (context, state) => const SettingsPage(),
  );
}
