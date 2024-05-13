import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  final textInput = BehaviorSubject<String>();

  final debouncer = textInput.debounceTime(Duration(milliseconds: 500));
  debouncer.listen((e) => print("Searching for: $e"));

  final text = "FlutterDebounce";
  for (var i = 0; i < text.length; i++) {
    textInput.add(text.substring(0, i + 1));
  }
}
