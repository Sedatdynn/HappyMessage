import 'package:go_router/go_router.dart';
import 'package:happy_message_app/product/navigation/manager/i_go_manager.dart';

class GoManager implements IGoManager {
  GoManager._init();
  static final GoManager _instance = GoManager._init();
  static GoManager get instance => _instance;
  late GoRouter _router;

  @override
  void init(GoRouter router) {
    _router = router;
  }

  @override
  Future<void> push({
    required String path,
    Map<String, String>? queryParameters,
    Object? data,
  }) async {
    await _router.push(
      Uri(path: path, queryParameters: queryParameters).toString(),
      extra: data,
    );
  }

  @override
  void replace({
    required String path,
    Map<String, String>? queryParameters,
    Object? data,
  }) {
    _router.replace(
      Uri(path: path).toString(),
    );
  }

  @override
  bool canPop() => _router.canPop();

  @override
  void pop() => _router.pop();

  @override
  void dispose() => _router.dispose();
}
