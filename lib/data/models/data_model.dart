import 'package:finam_test/data/models/children_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  DataModel({
    required this.dist,
    required this.children,
  });

  final int dist;
  final List<ChildrenModel> children;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
