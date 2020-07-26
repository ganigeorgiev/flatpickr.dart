Flatpickr (Dart)
================================================================================

Dart JS interop for [Flatpickr v4+](https://flatpickr.js.org/) - a lightweight and powerful datetime picker.


## Usage

1. Register the Dart package in your `pubspec.yaml`:

    ```yaml
    dependencies:
      flatpickr: ^0.1.0
    ```

2. Load the latest Flatpickr source (js and css) in your html layout:

    ```html
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    ```

3. Create a `Flatpickr` instance:

    ```dart
    import 'dart:html';

    import 'package:flatpickr/flatpickr.dart';
    import 'package:js/js.dart';

    void main() {
      final el = document.getElementById('some_input_element');

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
    ```

> **NB!** When passing a Dart function as event callback, make sure to wrap it with `allowInterop()` or `allowInteropCaptureThis()`.

Check the [API reference](https://pub.dev/documentation/flatpickr/latest/) for detailed documentation.

To view the example, run `pub global run webdev serve example` from the root directory of this project.
