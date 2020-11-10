import '../data_source/remote/sample_api.dart';
import 'package:injectable/injectable.dart';
import 'package:domain/domain.dart';

@Singleton(as: SampleRepository)
class SampleRepositoryImpl extends SampleRepository {

  SampleApi sampleApi;

  SampleRepositoryImpl(SampleApi sampleApi) {
    this.sampleApi = sampleApi;
  }

  @override
  Future<SampleResponse> getSample() {
    return sampleApi.getSample();
  }
}
