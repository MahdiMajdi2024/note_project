import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:note_project/ui/calender_page.dart';
import 'package:note_project/ui/home_screen.dart';
import 'package:note_project/ui/time_page.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  GlobalKey<CurvedNavigationBarState> _curvednavihationkey = GlobalKey();

  int _intPage = 0;

  static List<Widget> widgetOptions = [
    HomeScreen(),
    CalenderPage(),
    TimePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_intPage),
      bottomNavigationBar: CurvedNavigationBar(
        key: _curvednavihationkey,
        index: 0,
        height: 65,

        items: [
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.home,
              size: 35,
              color: Color(0xff18DAA3),
            ),
          ),
          Icon(
            Icons.calendar_today,
            size: 35,
            color: Color(0xff18DAA3),
          ),
          Icon(
            Icons.timelapse,
            size: 35,
            color: Color(0xff18DAA3),
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xff18DAA3),
        animationCurve: Curves.easeInBack,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _intPage = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
