import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class UserPrefrence {
  static late Box boxData;

  static Future<void> initHve() async {
    await Hive.initFlutter();
    boxData = await Hive.openBox("data");
  }

  static bool get isModeDark => boxData.get("isModeDark") ?? false;
  static set isModeDark(bool value) => boxData.put("isModeDark", value);
}
