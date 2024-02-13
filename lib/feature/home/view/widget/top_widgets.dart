part of '../home_view.dart';

class _TopRowWidgets extends StatelessWidget {
  const _TopRowWidgets();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Expanded(flex: 1, child: Assets.png.btnBack.image()),
            Expanded(
              flex: 3,
              child: Text(
                TextConstant.dailyMessage,
                style: context.textTheme.titleSmall,
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ),
            const Expanded(flex: 1, child: _PopUpMenu()),
          ],
        ));
  }
}

class _PopUpMenu extends StatelessWidget {
  const _PopUpMenu();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      initialValue: 1,
      icon: Assets.png.btnOptions.image(),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          value: PopUpItems.itemOne.name,
          child: PopUpItems.itemOne.value,
        ),
        PopupMenuItem(
          value: PopUpItems.itemTwo.name,
          child: PopUpItems.itemTwo.value,
        ),
      ],
    );
  }
}
