import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
      theme: ThemeData(brightness: Brightness.light),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showDatePicker() {
    showPersianDatePicker(
      context: context,
      initialDate: Jalali.now(),
      firstDate: Jalali(1370, 1),
      lastDate: Jalali(1450, 9),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: _showDatePicker,
          icon: Icon(
            Icons.edit_calendar,
            size: 33.0,
          ),
          label: Text(
            'تعیین تاریخ',
            style: TextStyle(fontSize: 33),
          ),
        ),
      ),
    );
  }
}
