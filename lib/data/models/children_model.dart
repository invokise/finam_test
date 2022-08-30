import 'package:finam_test/data/models/children_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'children_model.g.dart';

@JsonSerializable()
class ChildrenModel {
  ChildrenModel({
    required this.data,
  });

  final ChildrenDataModel data;

  factory ChildrenModel.fromJson(Map<String, dynamic> json) =>
      _$ChildrenModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenModelToJson(this);
}
