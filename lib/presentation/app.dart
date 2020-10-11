import 'package:flutter/material.dart';
import 'package:flutter_base/base/bloc_provider.dart';
import 'package:flutter_base/common/components/internationalization.dart';
import 'package:flutter_base/di/injection.dart';
import 'package:flutter_base/domain/entities/app_data.dart';
import 'package:flutter_base/presentation/common/app_bloc.dart';
import 'package:flutter_base/presentation/route/route.dart';
import 'package:flutter_base/presentation/route/route_list.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../config.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  AppBloc _appBloc;

  @override
  void initState() {
    super.initState();
    _appBloc = getIt.get<AppBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (BuildContext context) => _appBloc,
          )
        ],
        child: StreamBuilder(
            stream: _appBloc.appDataStream,
            initialData: _appBloc.initialData,
            builder: (BuildContext context, AsyncSnapshot<AppData> snapshot) {
              if (snapshot.data == null) return Container();
              return MaterialApp(
                  debugShowCheckedModeBanner: appConfig.cheat,
                  onGenerateRoute: RouteGenerator.buildRoutes,
                  initialRoute: RouteList.initial,
                  localizationsDelegates: const {
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate
                  },
                  supportedLocales:
                      Languages.languages.map((e) => Locale(e.code)).toList(),
                  locale: snapshot.data?.locale);
            }));
  }

  @override
  void dispose() {
    _appBloc.dispose();
    super.dispose();
  }
}
