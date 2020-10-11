import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class Decorations {
  static Decoration bottom = BoxDecoration(
      border: Border(
          bottom:
              BorderSide(width: Dimens.border_width, color: Colours.divider)));

  static Decoration right = BoxDecoration(
      border: Border(
          right:
              BorderSide(width: Dimens.border_width, color: Colours.divider)));

  static Decoration top = BoxDecoration(
      border: Border(
          top: BorderSide(width: Dimens.border_width, color: Colours.divider)));

  static Decoration left = BoxDecoration(
      border: Border(
          left:
              BorderSide(width: Dimens.border_width, color: Colours.divider)));
}

class Gaps {
  static Widget hGap5 = new SizedBox(width: Dimens.gap_dp5);
  static Widget hGap10 = new SizedBox(width: Dimens.gap_dp10);
  static Widget hGap12 = new SizedBox(width: Dimens.gap_dp12);
  static Widget hGap16 = new SizedBox(width: Dimens.gap_dp16);
  static Widget hGap24 = new SizedBox(width: Dimens.gap_dp24);
  static Widget hGap30 = new SizedBox(width: Dimens.gap_dp30);

  static Widget vGap5 = new SizedBox(height: Dimens.gap_dp5);
  static Widget vGap10 = new SizedBox(height: Dimens.gap_dp10);
  static Widget vGap12 = new SizedBox(height: Dimens.gap_dp12);
  static Widget vGap16 = new SizedBox(height: Dimens.gap_dp16);
  static Widget vGap20 = new SizedBox(height: Dimens.gap_dp20);
  static Widget vGap24 = new SizedBox(height: Dimens.gap_dp24);

  static Widget getHGap(double w) {
    return SizedBox(width: w);
  }

  static Widget getVGap(double h) {
    return SizedBox(height: h);
  }
}
