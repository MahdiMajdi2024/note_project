import 'package:flutter/material.dart';
import 'package:note_project/time_widget/appbar.dart';
import 'package:note_project/time_widget/center_widget.dart';
import 'package:note_project/time_widget/list_view.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Appbar_Widget(),
            Padding(
              padding: EdgeInsets.only(top: 49, right: 68, left: 68),
              child: Image(
                image: AssetImage('images/Group 84.png'),
              ),
            ),
            CenterWidget(),
            SizedBox(height: 37),
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'شمارنده های ذخیره',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sm',
                      fontSize: 18,
                      color: Color(0xffBFC3C8)
                    ),
                  )
                ],
              ),
            ),
            List_View()
          ],
        ),
      ),
    );
  }
}
