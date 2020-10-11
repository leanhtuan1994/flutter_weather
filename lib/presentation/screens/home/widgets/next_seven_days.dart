import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_base/common/res/index.dart';
import 'package:flutter_base/data/models/date_status.dart';
import 'package:flutter_base/presentation/screens/home/widgets/title_widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';

class NextSevenDays extends StatefulWidget {
  @override
  _NextSevenDaysState createState() => _NextSevenDaysState();
}

class _NextSevenDaysState extends State<NextSevenDays> {
  final entries = [
    DateStatus(
        highTemp: 30,
        lowTemp: 20,
        percent: 40,
        dateTime: DateTime.now().add(const Duration(days: 1)),
        iconData: WeatherIcons.wi_cloud),
    DateStatus(
        highTemp: 36,
        lowTemp: 21,
        percent: 34,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        iconData: WeatherIcons.wi_day_lightning),
    DateStatus(
        highTemp: 33,
        lowTemp: 23,
        percent: 35,
        dateTime: DateTime.now().add(const Duration(days: 3)),
        iconData: WeatherIcons.wi_day_rain),
    DateStatus(
        highTemp: 32,
        lowTemp: 19,
        percent: 67,
        dateTime: DateTime.now().add(const Duration(days: 4)),
        iconData: WeatherIcons.wi_cloudy_windy),
    DateStatus(
        highTemp: 31,
        lowTemp: 23,
        percent: 78,
        dateTime: DateTime.now().add(const Duration(days: 5)),
        iconData: WeatherIcons.wi_rain_wind),
    DateStatus(
        highTemp: 38,
        lowTemp: 24,
        percent: 89,
        dateTime: DateTime.now().add(const Duration(days: 6)),
        iconData: WeatherIcons.wi_sunset),
    DateStatus(
        highTemp: 31,
        lowTemp: 25,
        percent: 34,
        dateTime: DateTime.now().add(const Duration(days: 7)),
        iconData: WeatherIcons.wi_smog)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(title: "NEXT 7 DAYS"),
        Gaps.vGap24,
        Container(
          height: 260,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: entries
                .map((e) => Expanded(child: ItemDay(dateStatus: e)))
                .toList(),
          ),
        )
      ],
    );
  }
}

class ItemDay extends StatelessWidget {
  final randomInt = Random().nextInt(60);
  final DateStatus dateStatus;

  ItemDay({Key key, this.dateStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Spacer(),
                Text(
                  "${dateStatus.highTemp}°",
                  style: TextStyle(color: Colors.white),
                ),
                Gaps.vGap5,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: (60 + randomInt).toDouble(),
                  width: 5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: const [
                            Colors.deepOrange,
                            Colors.orangeAccent
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
                Gaps.vGap5,
                Text(
                  "${dateStatus.lowTemp}°",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Gaps.vGap12,
          Text(
            "${dateStatus.percent}%",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
          ),
          Gaps.vGap12,
          Icon(
            dateStatus.iconData,
            color: Colors.white,
            size: 18,
          ),
          Gaps.vGap16,
          Text(
            "${DateFormat('EEE', 'en_US').format(dateStatus.dateTime)}",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
