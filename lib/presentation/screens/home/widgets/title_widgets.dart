import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isViewMore;

  const TitleWidget({Key key, this.title, this.isViewMore = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          isViewMore
              ? GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_right,
                    color: Colors.grey,
                    size: 24,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
