import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String result = response.body;
      var decodedData = jsonDecode(result);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
