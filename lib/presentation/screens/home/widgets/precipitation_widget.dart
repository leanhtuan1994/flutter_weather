import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/presentation/screens/home/widgets/title_widgets.dart';

class Precipitation extends StatelessWidget {
  final List<Color> gradientColors = [Colors.blue[300]];

  LineChartData _lineChartData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.w300,
              fontSize: 15),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '15:00';
              case 3:
                return '17:00';
              case 5:
                return '19:00';
              case 7:
                return '21:00';
              case 9:
                return '23:00';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0%';
              case 3:
                return '50%';
              case 6:
                return '100%';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 0),
            FlSpot(0.5, 3),
            FlSpot(1, 5),
            FlSpot(2, 4),
            FlSpot(3, 6),
            FlSpot(4, 3),
            FlSpot(6, 4),
            FlSpot(8, 6),
            FlSpot(9, 5.4),
            FlSpot(9.5, 4),
            FlSpot(10, 0),
          ],
          isCurved: true,
          colors: const [Colors.blueAccent],
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: "Chance Of Precipitation",
          isViewMore: false,
        ),
        Container(
          padding: const EdgeInsets.only(top: 24),
          width: MediaQuery.of(context).size.width,
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 28),
          child: LineChart(_lineChartData()),
        )
      ],
    );
  }
}
