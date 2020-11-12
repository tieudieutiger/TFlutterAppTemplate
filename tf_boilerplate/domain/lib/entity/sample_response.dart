import 'package:json_annotation/json_annotation.dart';

part 'sample_response.g.dart';

@JsonSerializable(nullable: false)
class SampleResponse {
  String name;

  SampleResponse({this.name});

  factory SampleResponse.fromJson(Map<String, dynamic> json) =>
      _$SampleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SampleToJson(this);
}
