import 'dart:convert';

import 'package:http/http.dart' as http;

userdata(city) async {
  var baseurl =
      "https://api.weatherbit.io/v2.0/current?city=$city&country=Pakistan&key=ac86edb49dd848e6be23c91ff42d1efe";
  var url = Uri.parse(baseurl);
  var res = await http.get(url);
  var jsondata = jsonDecode(res.body);
  return jsondata;
  // print(jsondata);
}
