part of 'sample_response.dart';

SampleResponse _$SampleResponseFromJson(Map<String, dynamic> json) {
  return SampleResponse(
      name: json['name'] as String
  );
}

Map<String, dynamic> _$SampleToJson(SampleResponse instance) => <String, dynamic>{
  'name': instance.name
};