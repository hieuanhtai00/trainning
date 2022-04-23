import 'dart:developer';

void main(List<String> args) {
  List<dynamic> ageList = [1, 3, 5, 8, 4, 20, 25, 26, -30, 15.5, 40, 65];
  for (var i = 0; i < ageList.length; i++) {
    try {
      int a = ageList[i];
      if (a > 0) print(a);
      if (a <= 0) {
        throw Exception('This is not > 0');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
