import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiProvider {
  var baseurl = 'https://hotel-production-67e4.up.railway.app/api';

  Future<Map> login(String email, String password) async {

    String endpoint = '/login';
    var body = {'email': email, 'password': password};
    var response = await http.post(Uri.parse("$baseurl$endpoint"), body: body);

    return jsonDecode(response.body);

  }
  Future<Map> register(String email, String password,String password_confirmation,String name) async {

    String endpoint = '/register';
    var body = {'email': email, 'password': password, 'password_confirmation' : password_confirmation,'name' : name};
    var response = await http.post(Uri.parse("$baseurl$endpoint"), body: body);

    return jsonDecode(response.body);

  }

}