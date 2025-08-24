import 'package:intl/intl.dart';

class AppFormatters {
  static String formatDate(DateTime date) {
    // TODO: Consider adding locale support if needed
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(date);
  }
  // Add other formatters as needed (e.g., currency, numbers)
}
