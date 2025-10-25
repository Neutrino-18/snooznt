import 'package:hive/hive.dart';

part 'alarm.g.dart';

@HiveType(typeId: 1)
class Alarm {
  Alarm({required this.name, required this.time, required this.tone});
  @HiveField(0)
  String name;
  @HiveField(1)
  DateTime time;
  @HiveField(2)
  String tone;
}
