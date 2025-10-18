import 'package:flutter/material.dart';
import 'package:note_project/buttom_navgitor.dart';
import 'package:note_project/ui/calender_page.dart';
import 'package:note_project/ui/home_screen.dart';
import 'package:note_project/ui/time_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom_Navigation(),
    );
  }
}

