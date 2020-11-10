import 'package:injectable/injectable.dart';
import 'package:domain/domain.dart';

@Injectable(as: SampleApi)
class SampleApi {
  SampleApi();

  Future<SampleResponse> getSample() async {
    return SampleResponse(name: "Sample name");
  }
}
