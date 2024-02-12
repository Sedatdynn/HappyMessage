import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:core/exception/exception.dart';
import 'package:equatable/equatable.dart';
import 'package:happy_message_app/feature/home/model/home_model.dart';
import 'package:happy_message_app/feature/home/service/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<GetMessagesEvent>(_getMessagesHandler);
    on<ChangeLikeEvent>(_changeLikedButtonHandler);
  }

  final IApiService _service = ApiService();

  Future<void> _getMessagesHandler(
    GetMessagesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _service.fetchData();
    if (result is ServerException) {
      log('LEFT ERROR: ${result.message}');
      emit(
        state.copyWith(errorMessage: result.message, isLoading: false),
      );
    } else {
      emit(state.copyWith(messages: result, isLoading: false));
      final likedList = List.generate(state.messages.length, (index) => false);
      emit(state.copyWith(isLikedList: likedList));
    }
  }

  Future<void> _changeLikedButtonHandler(
    ChangeLikeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final isLikedList = state.isLikedList;
    isLikedList[event.index] = !isLikedList[event.index];
    emit(state.copyWith(isLikedList: isLikedList, isLoading: false));
  }
}
