part of '../home_view.dart';

class _MessageBodyWidget extends StatelessWidget {
  const _MessageBodyWidget({
    required this.messageList,
    required this.isLikedList,
  });
  final List<MessageModel> messageList;
  final List<bool> isLikedList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageList.length,
        itemBuilder: (context, index) {
          final messages = messageList[index];
          final likeList = isLikedList[index];
          return Padding(
            padding: AppPadding.minOnlyTop(),
            child: Container(
              padding: AppPadding.normalAll(),
              decoration: BoxDecoration(
                  borderRadius: CustomBorderRadius.normalCircular(),
                  color: context.theme.primaryColor.withOpacity(0.12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            messages.title.toString(),
                            style: context.textTheme.headlineLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          messages.date.toString(),
                          style: context.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      messages.message.toString(),
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                  InkWell(
                    onTap: () => context.read<HomeBloc>().add(ChangeLikeEvent(index)),
                    child: Assets.png.btnHeart
                        .image(color: likeList ? context.theme.focusColor : null),
                  ),
                  Assets.png.btnSend.image(),
                ],
              ),
            ),
          );
        });
  }
}
