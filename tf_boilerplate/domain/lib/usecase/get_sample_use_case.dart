import '../entity/sample_response.dart';
import '../repository/sample_repository.dart';
import './base_use_case.dart';

class GetSampleUseCase extends BaseUseCase<SampleResponse> {

  SampleRepository repository;

  GetSampleUseCase(SampleRepository pokemonRepository) {
    this.repository = pokemonRepository;
  }

  @override
  Future<SampleResponse> perform() {
    return repository.getSample();
  }
}