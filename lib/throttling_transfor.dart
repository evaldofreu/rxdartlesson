import 'dart:async';

class Throttle<S, T> implements StreamTransformer<S, T> {
  final Duration duration;

  Throttle(this.duration);

  @override
  Stream<T> bind(Stream<S> stream) {
    Timer? timer;
    final controller = StreamController<T>();
    stream.listen((event) {
      if (timer == null || !timer!.isActive) {
        timer = Timer(duration, () {});
        controller.add(event as T);
      }
    });

    return controller.stream;
  }

  @override
  StreamTransformer<RS, RT> cast<RS, RT>() {
    return StreamTransformer.castFrom(this);
  }
}
