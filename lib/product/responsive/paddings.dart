import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
final class AppPadding extends EdgeInsets {
  const AppPadding() : super.all(0);

  /// [ProjectPadding.normalAll] is 12

  AppPadding.normalAll() : super.all(12.w);

  /// [ProjectPadding.largeHorizontal] is 24

  AppPadding.largeHorizontal() : super.symmetric(horizontal: 24.w);

  /// [ProjectPadding.minOnlyTop] is 5

  AppPadding.minOnlyTop() : super.only(top: 8.w);

  /// [ProjectPadding.leftRight] is Left: 24, right: 12

  AppPadding.leftRight() : super.only(left: 24.w, right: 12.w);
}

@immutable
final class CustomBorderRadius extends BorderRadius {
  const CustomBorderRadius() : super.all(Radius.zero);

  /// [CustomBorderRadius.normalCircular] is 12

  CustomBorderRadius.normalCircular() : super.circular(12.w);

  /// [CustomBorderRadius.largeCircular] is 24
  CustomBorderRadius.largeCircular() : super.circular(24.w);
}
