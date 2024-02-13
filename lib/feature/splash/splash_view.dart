import 'package:happy_message_app/feature/home/view/index.dart';
import 'package:happy_message_app/product/navigation/manager/go_manager.dart';
import 'package:happy_message_app/product/navigation/routes/navigation_constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
    navigate();
  }

  navigate() async => await Future.delayed(const Duration(seconds: 2))
      .then((value) => GoManager.instance.replace(path: NavigationConstants.home));
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _opacityAnimation,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 175.h,
                child: Assets.png.splash.image(),
              ),
            ),
            FadeTransition(
              opacity: _opacityAnimation,
              child: Text(
                TextConstant.appName,
                style: context.textTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
