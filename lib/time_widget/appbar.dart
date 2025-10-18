import 'package:flutter/material.dart';


class Appbar_Widget extends StatefulWidget {
  const Appbar_Widget({super.key});

  @override
  State<Appbar_Widget> createState() => _Appbar_WidgetState();
}

class _Appbar_WidgetState extends State<Appbar_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image(
              image: AssetImage('images/Add.png'),
            ),
          ),
          SizedBox(width: 24),
          SizedBox(
            height: 25,
            width: 25,
            child: Image(
              image: AssetImage('images/Settings.png'),
            ),
          ),
          Spacer(),
          Text(
            'زمان شمار',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'sm',
                color: Color(0xffBFC3C8)
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'شمارنده معکوس',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'sm',
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 2,
                width: 112,
                color: Color(0xff18DAA3),
              )
            ],
          ),
        ],
      ),
    );
  }
}
