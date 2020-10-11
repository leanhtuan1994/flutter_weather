import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'ZKuzan',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Spacer(),
        Icon(
          Ionicons.ios_share,
          size: 22,
          color: Colors.white,
        ),
        SizedBox(
          width: 16,
        ),
        Icon(
          Ionicons.ios_menu,
          size: 24,
          color: Colors.white,
        )
      ],
    );
  }
}
