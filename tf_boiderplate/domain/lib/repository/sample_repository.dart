import '../entity/sample_response.dart';

abstract class SampleRepository {
  Future<SampleResponse> getSample();
}