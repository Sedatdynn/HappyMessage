import 'index.dart';

part 'widget/top_widgets.dart';
part 'widget/bottom_widgets.dart';
part 'widget/message_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: CustomBoxDecoration.backGroundImageDecoration(),
        child: Container(
          decoration: BoxDecoration(
            color: context.theme.primaryColorDark.withOpacity(0.6),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: AppPadding.largeHorizontal(),
                  child: const _TopRowWidgets(),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                    padding: AppPadding.largeHorizontal(),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return state.isLoading
                            ? const LoadingProgressWidget()
                            : state.errorMessage != null
                                ? CustomErrorWidget(message: state.errorMessage!)
                                : _MessageBodyWidget(
                                    messageList: state.messages, isLikedList: state.isLikedList);
                      },
                    )),
              ),
              const Expanded(flex: 1, child: _BottomRowWidgets()),
            ],
          ),
        ),
      ),
    );
  }
}
