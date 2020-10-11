import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/presentation/screens/home/home_page.dart';
import 'package:flutter_base/presentation/screens/splash/splash_page.dart';

import 'route_list.dart';

class RouteGenerator {
  static Route buildRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteList.initial:
        return buildRoute(SplashPage(), settings: settings);
      case RouteList.home:
        return buildRoute(HomePage(), settings: settings);
      default:
        return buildRoute(
          const SizedBox(),
          settings: settings,
        );
    }
  }
}

Route buildRoute(Widget screen, {RouteSettings settings}) {
  return CupertinoPageRoute(builder: (context) => screen, settings: settings);
}
