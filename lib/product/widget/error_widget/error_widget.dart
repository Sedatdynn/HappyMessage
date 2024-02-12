import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.message, super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(TextConstant.somethingWrong, style: context.textTheme.titleLarge),
          Text(message, style: context.textTheme.titleLarge),
        ],
      ),
    );
  }
}
