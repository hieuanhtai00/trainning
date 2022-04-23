import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map> printInformation() async {
  final response =
      await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
  final responseData = jsonDecode(response.body);
  return responseData;
}

void main(List<String> args) async {
  print(await printInformation());
}
