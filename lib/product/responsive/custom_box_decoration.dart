import 'package:flutter/material.dart';
import 'package:happy_message_app/gen/assets.gen.dart';

final class CustomBoxDecoration {
  static BoxDecoration backGroundImageDecoration() {
    return BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.png.background.path,
            )));
  }
}
