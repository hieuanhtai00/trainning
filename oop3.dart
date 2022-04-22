abstract class PersonSample {
  void input();
  void display();
}

class Person extends PersonSample {
  Person({required this.id, required this.name});
  String id, name;
  int _age = 0;
  // Setter
  set setAge(int age) {
    _age = age;
  }

  set setId(String id) {
    id = id;
  }

  set setName(String name) {
    name = name;
  }

//Getter
  String get namePerson => name;
  String get idPerson => id;
  int get agePerson => _age;
  @override
  void input() {
    // TODO: implement input
  }
  @override
  void display() {
    // TODO: implement display
  }
}

class Student extends Person {
  Student({
    required this.id,
    required this.name,
    required this.mark,
    required this.grade,
  }) : super(
          id: id,
          name: name,
        );
  String id;
  String name;
  int mark = 0;
  String grade = '';
  // Getter
  int get markStudent => mark;
  String get grradeStudent => grade;
  // Setter
  set markStudent(int mark) {
    this.mark = mark;
  }

  @override
  void display() {
    print('Name : ' + name);
    print('Mark : ' + mark.toString());
    print('Grade : ' + grade);
  }
}

void main(List<String> args) {
  Student student =
      Student(id: '10', name: 'Nguyen Van A', mark: 12, grade: '1');
  student.display();
}
