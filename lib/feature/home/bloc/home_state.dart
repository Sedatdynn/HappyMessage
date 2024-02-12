part of 'home_bloc.dart';

final class HomeState extends Equatable {
  const HomeState({
    required this.messages,
    required this.errorMessage,
    required this.isLoading,
    required this.isLikedList,
  });

  //initial state cases
  factory HomeState.initial() {
    return const HomeState(
      messages: [],
      errorMessage: null,
      isLoading: false,
      isLikedList: [],
    );
  }

  final List<MessageModel> messages;
  final String? errorMessage;
  final bool isLoading;
  final List<bool> isLikedList;

  @override
  List<Object?> get props => [
        messages.map((e) => e),
        errorMessage,
        isLoading,
        isLikedList,
      ];

  //copyWith
  HomeState copyWith({
    List<MessageModel>? messages,
    String? errorMessage,
    bool? isLoading,
    List<bool>? isLikedList,
  }) {
    return HomeState(
      messages: messages ?? this.messages,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
      isLikedList: isLikedList ?? this.isLikedList,
    );
  }
}
