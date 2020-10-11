import 'package:flutter/material.dart';
import 'package:flutter_base/common/res/index.dart';
import 'package:flutter_base/presentation/screens/home/widgets/title_widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TemHour {
  final int temperature;
  final int hour;

  TemHour({this.temperature, this.hour});
}

class TemperatureHours extends StatelessWidget {
  final List<TemHour> entries = <TemHour>[
    TemHour(temperature: 26, hour: 1),
    TemHour(temperature: 26, hour: 2),
    TemHour(temperature: 26, hour: 3),
    TemHour(temperature: 26, hour: 4),
    TemHour(temperature: 26, hour: 5),
    TemHour(temperature: 26, hour: 6),
    TemHour(temperature: 26, hour: 7),
    TemHour(temperature: 26, hour: 8),
    TemHour(temperature: 26, hour: 9),
    TemHour(temperature: 26, hour: 10),
    TemHour(temperature: 26, hour: 11),
    TemHour(temperature: 26, hour: 12),
    TemHour(temperature: 26, hour: 13),
    TemHour(temperature: 26, hour: 14),
    TemHour(temperature: 26, hour: 15),
    TemHour(temperature: 26, hour: 16),
    TemHour(temperature: 26, hour: 17),
    TemHour(temperature: 26, hour: 18),
    TemHour(temperature: 26, hour: 19),
    TemHour(temperature: 26, hour: 20),
    TemHour(temperature: 26, hour: 21),
    TemHour(temperature: 26, hour: 22),
    TemHour(temperature: 26, hour: 23),
    TemHour(temperature: 26, hour: 24)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TitleWidget(title: 'NEXT 24 HOURS'),
        Gaps.vGap16,
        Container(
          height: 120,
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Item(
                    key: Key(index.toString()),
                    temHour: entries[index],
                    index: index);
              }),
        )
      ],
    );
  }
}

class Item extends StatelessWidget {
  final TemHour temHour;
  final int index;

  const Item({Key key, this.temHour, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: index == 0 ? Colors.white12 : Colors.black),
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                '${temHour.temperature.toString()}°',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Icon(
                WeatherIcons.wi_night_alt_cloudy,
                size: 16,
                color: Colors.white,
              ),
            ),
            Text(
              '${temHour.hour}:00',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
