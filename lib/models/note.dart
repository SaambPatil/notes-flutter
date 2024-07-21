import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

class Note {
  String title;
  String content;
  DateTime date = DateTime.now();

  final formatter = DateFormat.yMd();
  final String id = uuid.v4();

  Note({
    required this.title,
    required this.content,
  });

  String get formattedDate {
    return formatter.format(date);
  }
}
