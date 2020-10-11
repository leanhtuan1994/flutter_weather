import 'package:flutter/material.dart';

class DateStatus {
  final int highTemp;
  final int lowTemp;
  final int percent;
  final IconData iconData;
  final DateTime dateTime;

  DateStatus(
      {this.highTemp,
      this.lowTemp,
      this.percent,
      this.dateTime,
      this.iconData});
}
