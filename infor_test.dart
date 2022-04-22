class User {
  User({required this.name, required this.age, required this.address});
  String name;
  int age;
  String address;
}

List<Map<String, dynamic>> users = [
  {
    'name': 'Yasuo',
    'age': 21,
    'address': 'Japan',
  },
  {
    'name': 'Leesin',
    'age': 41,
    'address': 'China',
  },
  {
    'name': 'Xinzhao',
    'age': 34,
    'address': 'China',
  },
  {
    'name': 'Garen',
    'age': 27,
    'address': 'Demacia',
  },
  {
    'name': 'Lux',
    'age': 21,
    'address': 'Demacia',
  },
  {
    'name': 'Darius',
    'age': 51,
    'address': 'Noxus',
  },
];
