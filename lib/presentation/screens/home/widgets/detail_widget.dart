import 'package:flutter/material.dart';
import 'package:flutter_base/common/res/index.dart';
import 'package:flutter_base/presentation/screens/home/widgets/title_widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Detail {
  final IconData iconData;
  final String name;
  final String value;

  Detail({this.iconData, this.name, this.value});
}

class DetailItem extends StatelessWidget {
  final Detail item;

  const DetailItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: <Widget>[
            Icon(
              item.iconData,
              size: 16,
              color: Colors.white,
            ),
            Expanded(
              child: Center(
                child: Text(
                  item.name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                ),
              ),
            ),
            Text(
              item.value,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class DetailWidget extends StatelessWidget {
  final List<Detail> details = <Detail>[
    Detail(
        iconData: WeatherIcons.wi_forecast_io_clear_day,
        name: "Feel Like",
        value: "37°C"),
    Detail(
        iconData: WeatherIcons.wi_day_light_wind,
        name: "Humidity",
        value: "79%"),
    Detail(iconData: WeatherIcons.wi_day_rain, name: "UV Index", value: "4"),
    Detail(
        iconData: WeatherIcons.wi_day_sunny, name: "Visibility", value: "5km"),
    Detail(
        iconData: WeatherIcons.wi_day_snow_thunderstorm,
        name: "Dew Point",
        value: "26"),
    Detail(
        iconData: WeatherIcons.wi_day_lightning,
        name: "Pressure",
        value: "1006 mb")
  ];

  _buildItem(BuildContext context, index) {
    final item = details[index];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleWidget(title: "DETAILS"),
        Gaps.vGap16,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: details.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemBuilder: (context, index) {
                return DetailItem(
                  key: UniqueKey(),
                  item: details[index],
                );
              }),
        )
      ],
    );
  }
}
