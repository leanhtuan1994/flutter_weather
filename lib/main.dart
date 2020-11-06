import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'common/components/preferences_helper.dart';
import 'config.dart';
import 'di/injection.dart' as injection;
import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appConfig = Config.from(Env.prodEnv);
  Intl.defaultLocale = "vi_VN";

  await injection.init();
  await PreferencesHelper.getInstance();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));

  runApp(const App());
}
