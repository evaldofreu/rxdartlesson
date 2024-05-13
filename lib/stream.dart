import 'dart:async';

void main(List<String> args) {
  final controller = StreamController<int>();
  controller.add(1);
  controller.add(2);
  controller.add(3);
  final subscription = controller.stream.listen((event) {
    print("Received $event");
  });
}
