import 'package:rxdart/rxdart.dart';
import 'package:domain/domain.dart';
import 'package:data/data.dart';

class SampleViewModel {
  var sampleDataSubject = PublishSubject<SampleResponse>();
  GetSampleUseCase getSampleUseCase =
      GetSampleUseCase(SampleRepositoryImpl(SampleApi()));

  void getSample() async {
    try {
      sampleDataSubject.sink.add(await getSampleUseCase.perform());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      sampleDataSubject.sink.addError(e);
    }
  }

  void closeObservable() {
    sampleDataSubject.close();
  }
}
