class Student {
  Student({
    required this.id,
    required this.name,
    required this.math,
    required this.literal,
    required this.english,
  });
  // Attributes
  int id;
  String name;
  DateTime _birthday = DateTime(2001);
  String _phone = '';
  double math, literal, english;

  // Methods
  void getInforStudent() {
    print(
      'ID : ' +
          id.toString() +
          ', Name : ' +
          name +
          ', Birthday : ' +
          birthday.toString() +
          ', Phone : ' +
          phone,
    );
  }

  double average() {
    return (math + literal + english).toDouble() / 3;
  }

  void XepLoai() {
    if (average() < 4)
      print('Hoc luc yeu');
    else if (average() < 6.5)
      print('Hoc luc trung binh');
    else if (average() < 8)
      print('Hoc luc kha');
    else
      print('Hoc luc gioi');
  }

  void showAverage() {
    print('Average : ' + average().toString());
  }

  // Getter
  String get phone => _phone;
  DateTime get birthday => _birthday;

  // Overload operator >
  bool operator <(Student st) {
    if (this.average() < st.average()) return true;
    return false;
  }
}

void main(List<String> args) {
  List<Student> students = <Student>[
    Student(id: 0, name: 'Nguyen Van A', math: 10, literal: 5, english: 7),
    Student(id: 1, name: 'Nguyen Thi B', math: 9, literal: 9, english: 9),
    Student(id: 2, name: 'Nguyen Van C', math: 8, literal: 6, english: 6),
    Student(id: 3, name: 'Nguyen Van D', math: 7, literal: 5, english: 7),
    Student(id: 4, name: 'Nguyen Thi E', math: 6, literal: 5, english: 6),
    Student(id: 5, name: 'Nguyen Van F', math: 8, literal: 6, english: 4),
    Student(id: 6, name: 'Nguyen Van G', math: 10, literal: 5, english: 7),
    Student(id: 7, name: 'Nguyen Thi H', math: 9, literal: 9, english: 9),
    Student(id: 8, name: 'Nguyen Van I', math: 8, literal: 6, english: 3),
    Student(id: 9, name: 'Nguyen Van K', math: 3, literal: 5, english: 7),
    Student(id: 10, name: 'Nguyen Thi L', math: 5, literal: 7, english: 9),
    Student(id: 11, name: 'Nguyen Van M', math: 8, literal: 6, english: 10),
    Student(id: 12, name: 'Nguyen Van N', math: 7, literal: 5, english: 7),
    Student(id: 13, name: 'Nguyen Thi O', math: 9, literal: 9, english: 9),
    Student(id: 14, name: 'Nguyen Van P', math: 8, literal: 6, english: 8),
    Student(id: 15, name: 'Nguyen Van W', math: 6, literal: 5, english: 7),
    Student(id: 16, name: 'Nguyen Thi R', math: 9, literal: 9, english: 5),
    Student(id: 7, name: 'Nguyen Van Z', math: 8, literal: 6, english: 6),
  ];
  Student s = students[0];
  for (Student student in students) {
    if (s < student) {
      s = student;
    }
  }
  print('Studen max average has name : ' + s.name);
}
