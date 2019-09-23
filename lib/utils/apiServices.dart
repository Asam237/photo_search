import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<dynamic> _get(String url) async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }

  static Future<Map> getPicts(String name) async {
    return _get("https://pixabay.com/api/?key=11484437-f1fcd5e2fc8022a6d746b7022&q=$name&image_type=photo&pretty=true");
  }
}
