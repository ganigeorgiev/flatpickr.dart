import 'dart:html';

import 'package:flatpickr/flatpickr.dart';
import 'package:js/js.dart';

void main() {
  final el = document.getElementById('test_input');

  final options = FlatpickrOptions(
    enableTime: true,
    showMonths: 2,
    onChange: allowInterop((selectedDates, dateStr, instance, e) {
      print(selectedDates);
    }),
  );

  final obj = Flatpickr(el, options);

  obj.open(); // or any other instance method
}
