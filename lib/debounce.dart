import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  final stream = Stream.periodic(Duration(seconds: 1), (i) => i + i).take(20);

  final debouncer = stream
      .debounce((_) => TimerStream(true, Duration(seconds: 1)))
      .listen(print);
}
