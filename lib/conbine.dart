import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  final stream1 = Stream.fromIterable([1, 2, 3]);
  final stream2 = Stream.fromIterable([4, 5, 6]);
  final combineStream = Rx.concat([stream1, stream2]);
  final subscription = combineStream.listen((event) {
    print("Combined event: $event");
  });
}
