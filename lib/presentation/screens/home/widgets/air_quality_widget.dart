import 'package:flutter/material.dart';
import 'package:flutter_base/common/res/index.dart';
import 'package:flutter_base/presentation/screens/home/widgets/title_widgets.dart';

import 'air_chart_widget.dart';

class AirQualityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: "Air Quality Index",
          isViewMore: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                "85",
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 90,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(width: 16),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Moderate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Air quality is acceptable",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AirChartWidget(),
        )
      ],
    );
  }
}
