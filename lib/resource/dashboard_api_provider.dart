import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:structure_demo/config.dart';
import 'package:structure_demo/model/city_model.dart';

Future<CityModel> cityRequest() async {
  try {
    String strURL = Config.API_URL + Config.cities;
    final response =
        await http.get(strURL, headers: {'content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      return CityModel.fromJson(responseJson);
    } else {
      return null;
    }
  } catch (exception) {
    print('exception---- $exception');
    return null;
  }
}
