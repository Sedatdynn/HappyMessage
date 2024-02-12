// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      title: json['title'] as String?,
      date: json['date'] as String?,
      message: json['message'] as String?,
      isLiked: json['isLiked'] as bool?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'message': instance.message,
      'isLiked': instance.isLiked,
    };
