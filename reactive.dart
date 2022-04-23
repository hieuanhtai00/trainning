import 'package:rxdart/rxdart.dart';

Stream<int> getInt() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main(List<String> args) {
  BehaviorSubject publishSubject =
      BehaviorSubject<int>(); // PublishSubject, ReplaySubject
  publishSubject.add(10);
  publishSubject.add(20);
  publishSubject.listen((value) {
    print(value);
  });
  publishSubject.add(30);
  publishSubject.add(40);
  publishSubject.add(50);
  publishSubject.add(60);
}
