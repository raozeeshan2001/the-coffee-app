import 'dart:convert';

import 'package:coffee_app/cofee_model.dart';
import 'package:http/http.dart' as http;

class AllApis {
  List<CoffeeModel> postlist = [];

  Future<List<CoffeeModel>> getapi() async {
    var response =
        await http.get(Uri.parse('https://api.sampleapis.com/coffee/hot'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postlist.add(CoffeeModel.fromJson(i));
      }
      return postlist;
    } else {
      return postlist;
    }
  }
}
