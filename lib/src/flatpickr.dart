@JS()
library flatpickr;

import 'dart:html';

import 'package:js/js.dart';

import 'options.dart';

/// Flatpickr instance.
@JS('flatpickr')
class Flatpickr {
  external factory Flatpickr(
    HtmlElement element, [
    FlatpickrOptions options,
  ]);

  /// Parses date string according to date format.
  external static DateTime parseDate(String dateStr, String dateFormat);

  /// Transforms JS date object to string according to date format.
  external static String formatDate(DateTime dateObj, String dateFormat);

  /// The text input element associated with flatpickr.
  external HtmlElement get input;

  /// This is the div.flatpickr-calendar element.
  external HtmlElement get calendarContainer;

  /// The left arrow element responsible for decrementing the current month.
  external HtmlElement get prevMonthNav;

  /// The right arrow element responsible for incrementing the current month.
  external HtmlElement get nextMonthNav;

  /// The span holding the current month’s name.
  external HtmlElement get currentMonthElement;

  /// The input holding the current year.
  external HtmlElement get currentYearElement;

  /// The container for all the day elements.
  external HtmlElement get days;

  /// The array of selected dates (Date objects).
  external List get selectedDates;

  /// The year currently displayed on the calendar.
  external int get currentYear;

  /// The zero-indexed month number (0-11) currently displayed on the calendar.
  external int get currentMonth;

  /// The configuration object (defaults + user-specified options).
  external FlatpickrOptions get config;

  /// Changes the current month.
  external void changeMonth(int monthNum, [bool isOffset = true]);

  /// Resets the selected dates (if any) and clears the input.
  external void clear();

  /// Resets the selected dates (if any) and clears the input.
  external void close();

  /// Destroys the flatpickr instance, cleans up - removes event listeners,
  /// restores inputs, etc.
  external void destroy();

  /// Sets the calendar view to the year and month of date, which can be a
  /// date string, a `DateTime`, or nothing.
  ///
  /// If date is `undefined`, the view is set to the latest selected date,
  /// the `minDate`, or today’s date.
  ///
  /// If [triggerChange] is set to `true`, the `onMonthChange` and `onYearChange`
  /// hooks are triggered, but only if the new values differ.
  external void jumpToDate(dynamic date, [bool triggerChange = false]);

  /// Shows/opens the calendar.
  external void open();

  /// Redraws the calendar. Shouldn’t be necessary in most cases.
  external void redraw();

  /// Sets a config option optionto value, redrawing the calendar and updating
  /// the current view, if necessary.
  external void set(String option, dynamic value);

  /// Sets the current selected date(s) todate, which can be a date string,
  /// a DateTime, or an array of dates.
  ///
  /// Optionally, pass `true` as the second argument to force any `onChange` events to fire.
  /// And if you’re passing a date string with a format other than your dateFormat,
  /// provide a dateStrFormat e.g. "m/d/Y".
  external void setDate(
    dynamic date, [
    bool triggerChange = false,
    String dateStrFormat,
  ]);

  /// Shows/opens the calendar if its closed, hides/closes it otherwise.
  external void toggle();
}
