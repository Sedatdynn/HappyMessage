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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 216.w,
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
                  SizedBox(height: 12.h),
                  Text(
                    messages.message.toString(),
                    style: context.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 16.h),
                  InkWell(
                    onTap: () => context.read<HomeBloc>().add(ChangeLikeEvent(index)),
                    child: Assets.png.btnHeart
                        .image(color: likeList ? context.theme.focusColor : null),
                  ),
                  SizedBox(height: 16.h),
                  Assets.png.btnSend.image(),
                ],
              ),
            ),
          );
        });
  }
}
