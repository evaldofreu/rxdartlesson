import 'dart:async';

extension StreanExtensions<T> on Stream<T> {
  Stream<T> throttle(Duration duration) {
    Timer? timer;
    StreamController<T> resultStreamController = StreamController();

    listen((event) {
      if (timer == null || !timer!.isActive) {
        timer = Timer(duration, () {});
        resultStreamController.add(event);
      }
    });
    return resultStreamController.stream;
  }
}
