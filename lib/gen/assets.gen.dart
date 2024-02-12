/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/png/background.png');

  /// File path: assets/png/btn_back.png
  AssetGenImage get btnBack => const AssetGenImage('assets/png/btn_back.png');

  /// File path: assets/png/btn_heart.png
  AssetGenImage get btnHeart => const AssetGenImage('assets/png/btn_heart.png');

  /// File path: assets/png/btn_new_message.png
  AssetGenImage get btnNewMessage =>
      const AssetGenImage('assets/png/btn_new_message.png');

  /// File path: assets/png/btn_options.png
  AssetGenImage get btnOptions =>
      const AssetGenImage('assets/png/btn_options.png');

  /// File path: assets/png/btn_send.png
  AssetGenImage get btnSend => const AssetGenImage('assets/png/btn_send.png');

  /// File path: assets/png/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/png/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        background,
        btnBack,
        btnHeart,
        btnNewMessage,
        btnOptions,
        btnSend,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
