import 'dart:convert';

import 'package:http/http.dart' as http;

userdata() async {
  var baseurl =
      "https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=f5783e1fee68d6228723ecc46804ee40";
  var url = Uri.parse(baseurl);
  var res = await http.get(url);
  var jsondata = jsonDecode(res.body);
  return jsondata;
  // print(jsondata);
}
