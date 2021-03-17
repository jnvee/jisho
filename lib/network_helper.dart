import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class Network {
  String key = 'Token f2845b127218f475b1a665fa81a236ef7a2cf451';
  var url =
      Uri.https('owlbot.info', '/api/v4/dictionary/platoon', {'q': '{http}'});

  Future getData() async {
    http.Response response =
        await http.get(url, headers: {HttpHeaders.authorizationHeader: key});
    if (response.statusCode == 200) {
      return (response.body);
    } else {
      print(response.statusCode);
    }
  }
}

void getWordData() async {
  var data = await Network().getData();
  print(data);
}
