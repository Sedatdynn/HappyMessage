import 'package:happy_message_app/index.dart';

Future<void> main() async {
  await AppInitialize.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const GetMessagesEvent()),
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: CustomTheme().appTheme,
              routerConfig: router,
            );
          },
          child: const SplashView()),
    );
  }
}
