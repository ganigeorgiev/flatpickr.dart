@JS()
library flatpickr.locale;

import 'package:js/js.dart';

import 'typedefs.dart';

/// Wrapper object for shorthand and longhand representations of weekdays, months, etc.
@JS()
@anonymous
class FlatpickrShortLongMap {
  external factory FlatpickrShortLongMap({
    List shorthand,
    List longhand,
  });

  /// List of strings with shorthand option names.
  external List get shorthand;
  external set shorthand(List val);

  /// List of strings with longhand option names.
  external List get longhand;
  external set longhand(List val);
}

/// Custom locale config object.
///
/// For more info check https://github.com/flatpickr/flatpickr/blob/master/src/types/locale.ts
@JS()
@anonymous
class FlatpickrLocale {
  external factory FlatpickrLocale({
    FlatpickrShortLongMap weekdays,
    FlatpickrShortLongMap months,
    List daysInMonth,
    int firstDayOfWeek,
    FlatpickrOrdinalFunc ordinal,
    String rangeSeparator,
    String weekAbbreviation,
    String scrollTitle,
    String toggleTitle,
    List amPM,
    String yearAriaLabel,
    String monthAriaLabel,
    String hourAriaLabel,
    String minuteAriaLabel,
    bool time_24hr,
  });

  external FlatpickrShortLongMap get weekdays;
  external set weekdays(FlatpickrShortLongMap val);

  external FlatpickrShortLongMap get months;
  external set months(FlatpickrShortLongMap val);

  external List get daysInMonth;
  external set daysInMonth(List val);

  external int get firstDayOfWeek;
  external set firstDayOfWeek(int val);

  external FlatpickrOrdinalFunc get ordinal;
  external set ordinal(FlatpickrOrdinalFunc val);

  external String get rangeSeparator;
  external set rangeSeparator(String val);

  external String get weekAbbreviation;
  external set weekAbbreviation(String val);

  external String get scrollTitle;
  external set scrollTitle(String val);

  external String get toggleTitle;
  external set toggleTitle(String val);

  external List get amPM;
  external set amPM(List val);

  external String get yearAriaLabel;
  external set yearAriaLabel(String val);

  external String get monthAriaLabel;
  external set monthAriaLabel(String val);

  external String get hourAriaLabel;
  external set hourAriaLabel(String val);

  external String get minuteAriaLabel;
  external set minuteAriaLabel(String val);

  external bool get time_24hr;
  external set time_24hr(bool val);
}
