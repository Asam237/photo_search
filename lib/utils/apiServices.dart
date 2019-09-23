import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:photo_search/main.dart';

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
    return _get('${Urls.URL_BASE}');
  }
}
