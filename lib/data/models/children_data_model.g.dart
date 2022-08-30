// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChildrenDataModel _$ChildrenDataModelFromJson(Map<String, dynamic> json) =>
    ChildrenDataModel(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      selfText: json['selftext'] as String,
      ups: json['ups'] as int,
    );

Map<String, dynamic> _$ChildrenDataModelToJson(ChildrenDataModel instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'selftext': instance.selfText,
      'ups': instance.ups,
    };
