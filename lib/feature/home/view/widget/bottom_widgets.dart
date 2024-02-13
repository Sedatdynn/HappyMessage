part of '../home_view.dart';

class _BottomRowWidgets extends StatelessWidget {
  const _BottomRowWidgets();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.leftRight(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Button(text: TextConstant.dailyLuckyNumber),
          Assets.png.btnNewMessage.image()
        ],
      ),
    );
  }
}
