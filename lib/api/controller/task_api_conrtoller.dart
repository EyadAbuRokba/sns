import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:swmc/api/api_settings.dart';
import 'package:swmc/models/user.dart';
import 'package:swmc/preferences/user_preferences.dart';
import 'package:swmc/utils/helpers.dart';
import 'package:http/http.dart' as http;

class TaskApiController {
  Future<User> fetchUser() async {
    final response = await http
        .get(Uri.parse('https://jscpdn.ps/api/login'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  static Future<User> createAlbum(String title) async {
    final response = await http.post(
      Uri.parse(ApiSettings.ADD_PROBLEM),
      headers: <String, String>{
        'Accept': 'application/ecmascript; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    if (response.statusCode == 201) {
      print('نجح');

      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body));
    } else {
      print('خطأ');
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }


  static Future<bool> creatTask(BuildContext context , String title) async {
    var url = Uri.parse(ApiSettings.ADD_PROBLEM);
    var response = await http.post(url, body: {
      'title': title,
    }, headers: {
      HttpHeaders.authorizationHeader:
          UserSharedPreferencesController().getToken()
    });
    if (response.statusCode == 200) {
      print('نجح');

      Helpers.showSnacKBar(
          context: context, message: jsonDecode(response.body)['message']);
      return true;
    }
    print('خطأ');

    Helpers.showSnacKBar(
        context: context,
        message: jsonDecode(response.body)['message'],
        error: true);
    return false;
  }
}
