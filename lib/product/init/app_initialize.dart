import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_message_app/product/navigation/manager/go_manager.dart';
import 'package:happy_message_app/product/navigation/routes/go_routes.dart';

@immutable
final class AppInitialize {
  const AppInitialize._();
  static void init() {
    WidgetsFlutterBinding.ensureInitialized();
    GoManager.instance.init(router);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }
}
