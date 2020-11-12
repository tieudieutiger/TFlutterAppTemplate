import 'package:injectable/injectable.dart';
import 'package:domain/domain.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

@Injectable(as: SampleApi)
class SampleApi {
  SampleApi();

  Future<SampleResponse> getSample() async {
    http.Response r =
        await http.get('https://filipino-cuisine-app.firebaseio.com/data.json');

    Map<String, dynamic> user = jsonDecode(r.body);
    if (user != null) {
      String name = user['0']['fn'];
      return SampleResponse(name: name);
    }

    return SampleResponse(name: "Sample name");
  }
}
