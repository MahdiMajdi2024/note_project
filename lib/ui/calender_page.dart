import 'package:flutter/material.dart';
import 'package:note_project/calender_widget/appbar_widget.dart';
import 'package:note_project/calender_widget/container_widget_boxedit.dart';
import 'package:note_project/calender_widget/day_container.dart';
import 'package:note_project/hive_flutter/container_box.dart';
import 'package:note_project/home_widget/time_box_home.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarWidget(),
              SizedBox(height: 34),
              WeekDaysRow(),
              SizedBox(height: 16),
              TimeBoxHome(),
              SizedBox(height: 32),
              ContainerBox(),
              SizedBox(height: 20),
              ContainerBox(),
              SizedBox(height: 20),
              ContainerWidgetBoxEdit(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff18DAA3),
        child: Icon(Icons.add),
      ),
    );
  }
}
