import 'package:flutter/material.dart';

/// context extensions for handling various build context shorthands
extension ContextExtension on BuildContext {
  ///call app theme
  ThemeData get theme => Theme.of(this);

  ///call text theme
  TextTheme get textTheme => theme.textTheme;
}
