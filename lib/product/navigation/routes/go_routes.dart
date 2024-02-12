import 'package:go_router/go_router.dart';
import 'package:happy_message_app/feature/home/view/home_view.dart';
import 'package:happy_message_app/feature/splash/splash_view.dart';
import 'package:happy_message_app/product/navigation/routes/navigation_constant.dart';

/// GoRouter configuration
final router = GoRouter(
  routes: [
    /// initial splash page
    GoRoute(
      path: NavigationConstants.splash,
      builder: (context, state) => const SplashView(),
    ),
    // home page
    GoRoute(
      path: NavigationConstants.home,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
