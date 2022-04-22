// if else
import 'dart:io';

import 'infor_test.dart';

void CheckSoChanIfElse() {
  int a = int.parse(stdin.readLineSync()!);
  if (a % 2 == 0) {
    print(a.toString() + ' la so chan');
  } else {
    print(a.toString() + ' la so le');
  }
}

// switch case
void CheckSoChanSwitchCase() {
  int a = int.parse(stdin.readLineSync()!);
  int n = a % 2;
  switch (n) {
    case 0:
      print(a.toString() + ' la so chan');
      break;
    default:
      print(a.toString() + ' la so le');
  }
}

// for
void GiaiThua() {
  int n = int.parse(stdin.readLineSync()!);
  int giaithua = 1;
  for (int i = 1; i <= n; ++i) {
    giaithua *= i;
  }
  print('Giai thua cua n : ' + giaithua.toString());
}

void InSoNguyenDuongLe() {
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i <= n; ++i) {
    print(i.toString() + ' ');
  }
}

void InRaGiaTriTongKhongVuot50() {
  int sum = 0;
  int i = 0;
  do {
    ++i;
    sum += i;
    if (sum == 50) break;
  } while ((sum + (i + 1)) <= 50);
  for (var j = 1; j <= i; ++j) {
    print(j.toString() + ' ');
  }
}

void InTongChan() {
  int sum = 0;
  for (var i = 0; i <= 15; ++i) {
    sum += i;
    if (sum % 2 == 0) print(sum.toString() + ' ');
  }
}

void SuDungList() {
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  List<int> listInt = <int>[];
  for (var i = 0; i < n; ++i) {
    listInt.add(int.parse(stdin.readLineSync()!));
    sum += listInt[i];
  }
  print('Trung binh cong : ' + (sum.toDouble() / n).toString());
  listInt.sort();
  print(listInt);
}

void InThongTinTuMap() {
  for (Map<String, dynamic> item in users) {
    User user =
        User(name: item['name'], age: item['age'], address: item['address']);
    print('Name : ' + user.name);
    print('Age : ' + user.age.toString());
    print('Address : ' + user.address);
    print('\n');
  }
}

void InCacSoChanTu1Toi100TongKhongLonHon400() {
  int sum = 0;
  int i = 0;
  do {
    i += 2;
    sum += i;
    if (sum > 400) break;
    print(i.toString() + ' ');
  } while ((sum + (i + 2)) <= 400);
}

void DemSoChiaHetCho3and5() {
  int count3 = 0, count5 = 0;
  for (int i = 1; i <= 10000; i++) {
    if (i % 3 == 0) ++count3;
    if (i % 5 == 0) ++count5;
  }
  print('So chia het cho 3 : ' + count3.toString());
  print('So chia het cho 5 : ' + count5.toString());
}

void InCacSoChiaHetCho3TuList() {
  List<int> list = <int>[4, 3, 10, 9, 15, 7, 6, 5, 8];
  for (int item in list) {
    if (item % 3 == 0) print(item.toString() + ' ');
  }
}

void InHotLine() {
  Map<String, dynamic> classInformation = {
    'id': 12,
    'name': 'Bao Flutter',
    'description': 'Lớp học lập trình Flutter, hot line: 0349582808'
  };
  List<String> list = classInformation['description'].split(' ');
  print('Hotline : ' + list.elementAt(list.length - 1));
}

void main(List<String> args) {
  InHotLine();
}
