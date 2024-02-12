part of '../home_view.dart';

class _BottomRowWidgets extends StatelessWidget {
  const _BottomRowWidgets();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.leftRight(),
      child: Row(
        children: [
          const Button(text: TextConstant.dailyLuckyNumber),
          SizedBox(width: 12.h),
          Assets.png.btnNewMessage.image()
        ],
      ),
    );
  }
}
