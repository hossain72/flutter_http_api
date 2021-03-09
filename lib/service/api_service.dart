import 'dart:convert';

import 'package:flutter_dio_package/generated/json/base/json_convert_content.dart';
import 'package:flutter_dio_package/model/user_model_entity.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<UserModelEntity> getAllUser() async {

    final response = await http.get("https://reqres.in/api/users?page=2");

    if(response.statusCode == 200){
      var data = response.body;
      print(data);
      var json = jsonDecode(data);
      return JsonConvert.fromJsonAsT<UserModelEntity>(json);
    } else{
      throw Exception("Error");
    }

  }
}
