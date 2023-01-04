import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_app/src/model/sample_item_model.dart';
import 'package:test_app/src/utils/extentions.dart';
import 'package:test_app/src/utils/themes.dart';

import 'view/screens/sample_item_details_screen.dart';
import 'view/screens/sample_item_list_screen.dart';
import 'settings/settings_controller.dart';
import 'view/screens/settings_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'app',
          locale: settingsController.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ru', ''),
          ],
          onGenerateTitle: (BuildContext context) => context.lang.appTitle,
          theme: myTheme,
          routes: {
            '/': (context) => SampleItemListView(items: allMyCodes),
            '/settings': (context) =>
                SettingsView(controller: settingsController),
            '/sample_item': (context) => const SampleItemDetailsView(),
          },
          initialRoute: '/',
        );
      },
    );
  }
}
