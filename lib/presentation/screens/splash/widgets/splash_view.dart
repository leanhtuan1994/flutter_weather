import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SpinKitWanderingCubes(
          size: 35,
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
