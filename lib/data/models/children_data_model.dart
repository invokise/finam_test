import 'package:json_annotation/json_annotation.dart';

part 'children_data_model.g.dart';

@JsonSerializable()
class ChildrenDataModel {
  ChildrenDataModel({
    required this.title,
    required this.thumbnail,
    required this.selfText,
    required this.ups,
  });
  final String? thumbnail;
  final String title;
  @JsonKey(name: "selftext")
  final String selfText;
  final int ups;

  factory ChildrenDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenDataModelToJson(this);
}
