import 'package:flutter/material.dart';

import 'settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);

  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService;

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  late ThemeMode _themeMode;
  late Locale _locale;

  // Allow Widgets to read the user's preferred ThemeMode.
  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    _locale = await _settingsService.locale();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  /// Update and persist the Locale based on the user's selection.
  Future<void> updateLocale (Locale? newLocale) async {
    if (newLocale == null) return;

    if (newLocale == _locale) return;

    _locale = newLocale;

    notifyListeners();
  }
}
