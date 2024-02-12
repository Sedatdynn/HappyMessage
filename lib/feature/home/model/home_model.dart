import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:happy_message_app/product/typedef/typedef.dart';

part 'home_model.g.dart';

@JsonSerializable()
class MessageModel extends Equatable {
  const MessageModel({
    required this.title,
    required this.date,
    required this.message,
    required this.isLiked,
  });
  final String? title;
  final String? date;
  final String? message;
  final bool? isLiked;

  factory MessageModel.fromJson(DataMap json) => _$MessageModelFromJson(json);
  DataMap toJson() => _$MessageModelToJson(this);

  @override
  List<Object?> get props => [title, date, message, isLiked];

  MessageModel copyWith({
    String? title,
    String? date,
    String? message,
    bool? isLiked,
  }) {
    return MessageModel(
      title: title ?? this.title,
      date: date ?? this.date,
      message: message ?? this.message,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
