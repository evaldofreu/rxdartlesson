import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  final subject = BehaviorSubject<int>();
  final subscription = subject.listen((value) {
    print("Received value: $value");
  });

  subject.add(1);
  subject.add(2);
  subject.add(3);
}
