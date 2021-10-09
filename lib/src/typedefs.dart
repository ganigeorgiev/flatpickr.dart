import 'flatpickr.dart';

/// Flatpickr event callback function definition.
typedef FlatpickrEventFunc = Function(
  List selectedDates,
  String dateStr,
  Flatpickr instance,
  dynamic e,
);

/// Flatpickr locale ordinal function definition.
typedef FlatpickrOrdinalFunc = String Function([int? nth]);
