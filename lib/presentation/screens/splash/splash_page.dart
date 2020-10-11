import 'package:flutter/material.dart';
import 'package:flutter_base/presentation/route/route_list.dart';

import './widgets/splash_view.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Future.delayed(const Duration(seconds: 1)).then((_) => _launchApp());
  }

  _launchApp() {
    Navigator.pushReplacementNamed(context, RouteList.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(),
    );
  }
}
