part of '../home_view.dart';

class _TopRowWidgets extends StatelessWidget {
  const _TopRowWidgets();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54.h,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: context.theme.dividerColor.withOpacity(0.1),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.png.btnBack.image(),
            Text(
              TextConstant.dailyMessage,
              style: context.textTheme.titleSmall,
            ),
            PopupMenuButton(
              initialValue: 1,
              icon: Assets.png.btnOptions.image(),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: 1,
                  child: Text(' '),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(' '),
                ),
              ],
            ),
          ],
        ));
  }
}
