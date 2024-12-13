import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:emeron/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:emeron/core/enviroment/emeron_homolog.dart';
import 'package:emeron/core/enviroment/base_env.config.dart';
import 'package:emeron/core/enviroment/emeron_production.dart';
import 'package:emeron/core/enviroment/emeron_development.dart';

enum Environment { emeronProduction, emeronHomolog, emeronDevelopment }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) async {
    config = _getConfig(environment);
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      name: 'curso-emeron-flutter',
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await Future.wait([
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
      SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      ),
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.emeronProduction:
        return EmeronProductionEnvConfig();
      case Environment.emeronHomolog:
        return EmeronHomologEnvConfig();
      default:
        return EmeronDevelopmentEnvConfig();
    }
  }
}
