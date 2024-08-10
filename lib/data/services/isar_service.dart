import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/preference.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([
        PreferenceSchema,
      ], directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }
}
