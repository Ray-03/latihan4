import 'package:http/http.dart' as Http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Http.Response response = await Http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else
      print(response.statusCode);
  }
}
