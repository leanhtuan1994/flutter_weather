import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TemperatureWidget extends StatelessWidget {
  _getDate() {
    final DateTime dateTime = DateTime.now();
    return DateFormat('EEE, d MMMM', "en_US").format(dateTime).toUpperCase();
    //return "THU 01 OCßTOBER";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '30°C',
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 60,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(width: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '32°',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 32,
                            fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: 24,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '/',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 32,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        '30°',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 32,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Text(
            _getDate(),
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w100, color: Colors.cyan),
          ),
          SizedBox(height: 6),
          Text(
            'Ho Chi Minh City',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(height: 6),
          Text(
            'Thunder in the Vicinity',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  'Today - Light rain. High 32°, low 25°. Wind South southeast at 7 km/h.'
                  ' Change of precipitation 75%',
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_right,
                  color: Colors.grey,
                  size: 24,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
