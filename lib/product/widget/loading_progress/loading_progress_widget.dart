import 'package:core/core.dart';
import 'package:flutter/material.dart';

class LoadingProgressWidget extends StatelessWidget {
  const LoadingProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator.adaptive(
      backgroundColor: context.theme.primaryColor,
    ));
  }
}
