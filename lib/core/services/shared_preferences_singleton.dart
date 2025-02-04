import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _instance;

  static Future<void> init() async {
    if (_instance == null) {
      try {
        _instance = await SharedPreferences.getInstance();
      } catch (e) {
        // Handle the error appropriately
        log('Error initializing SharedPreferences: $e');
      }
    }
  }

  static Future<void> setBool(String key, bool value) async {
    if (_instance != null) {
      await _instance!.setBool(key, value);
    } else {
      log('SharedPreferences not initialized');
    }
  }

  static bool getBool(String key) {
    if (_instance != null) {
      return _instance!.getBool(key) ?? false;
    } else {
      log('SharedPreferences not initialized');
      return false;
    }
  }
}
