import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:rxdartlesson/throttling_transfor.dart';

void main(List<String> args) {
  final stream = Stream.periodic(Duration(seconds: 1), (i) => i + 1).take(20);

  // with extension
  /*
  stream.throttleTime(Duration(seconds: 3)).listen(print);
  */

  //with transformer
  //stream.transform(Throttle(Duration(seconds: 3))).listen(print);

  //with rxdart
  stream.throttleTime(Duration(seconds: 3)).listen(print);
}
