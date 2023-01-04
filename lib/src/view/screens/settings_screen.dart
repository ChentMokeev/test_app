import 'package:flutter/material.dart';
import 'package:test_app/src/utils/extentions.dart';

import '../../settings/settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller});

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.lang.settings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.topCenter,
          child: DropdownButton<Locale>(
            value: controller.locale,
            onChanged: controller.updateLocale,
            items: [
              DropdownMenuItem(
                value: const Locale('en'),
                child: Text(context.lang.english),
              ),
              DropdownMenuItem(
                value: const Locale('ru'),
                child: Text(context.lang.russian),
              )
            ],
          ),
        ),
      ),
    );
  }
}
