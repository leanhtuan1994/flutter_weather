import 'package:flutter/material.dart';

class AirChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            child: const QualityItem(
                index: "0", color: Colors.green, text: "Good")),
        Flexible(
            flex: 1,
            child:
                const QualityItem(index: "50", color: Colors.yellow, text: "")),
        Flexible(
            flex: 1,
            child: const QualityItem(
                index: "100", color: Colors.orange, text: "")),
        Flexible(
            flex: 1,
            child: const QualityItem(
                index: "150", color: Colors.redAccent, text: "")),
        Flexible(
            flex: 2,
            child: const QualityItem(
                index: "200", color: Colors.purpleAccent, text: "")),
        Flexible(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("300", style: TextStyle(color: Colors.white)),
                  Spacer(),
                  Text("500", style: TextStyle(color: Colors.white))
                ],
              ),
              Container(
                height: 3,
                margin: const EdgeInsets.symmetric(vertical: 6),
                color: Colors.deepPurple,
              ),
              Row(
                children: [
                  Text("", style: TextStyle(color: Colors.white)),
                  Spacer(),
                  Text("Hazardous", style: TextStyle(color: Colors.grey))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class QualityItem extends StatelessWidget {
  final String index;
  final Color color;
  final String text;

  const QualityItem({Key key, this.index, this.color, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(index, style: TextStyle(color: Colors.white)),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          height: 3,
          color: color,
        ),
        Text(text, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
