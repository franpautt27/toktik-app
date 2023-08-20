import 'package:intl/intl.dart';

class HumanFormats {
  static String getHumanReadableNumber(int number) {
    final formattedNumber = NumberFormat.compact().format(number);
    return formattedNumber;
  }
}
