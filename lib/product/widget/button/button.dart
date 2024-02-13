import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_message_app/product/responsive/paddings.dart';

class Button extends StatelessWidget {
  const Button({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: CustomBorderRadius.largeCircular(),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
