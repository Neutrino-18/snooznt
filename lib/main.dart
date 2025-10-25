import 'package:alert_app/objects/alarm.dart';
import 'package:alert_app/screens/alarm_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AlarmAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlarmScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
