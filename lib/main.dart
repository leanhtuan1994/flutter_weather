import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'common/components/preferences_helper.dart';
import 'config.dart';
import 'di/injection.dart' as injection;
import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Intl.defaultLocale = "vi_VN";

  print("tuananhle init");

  await const MethodChannel("flavor")
      .invokeMethod<String>("getFlavor")
      .then((String flavor) {
    print("tuananhle flavor: " + flavor);
    switch (flavor) {
      case "development":
        appConfig = Config.from(Env.devEnv);
        break;
      default:
        appConfig = Config.from(Env.prodEnv);
    }
  }).catchError((error) {
    appConfig = Config.from(Env.prodEnv);
  });

  await injection.init();
  await PreferencesHelper.getInstance();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));

  runApp(const App());
}
