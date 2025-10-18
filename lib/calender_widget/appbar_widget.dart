import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xff18DAA3),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff18DAA3),
                      blurRadius: 0.6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('images/Calendar.png'),
                  ),
                ),
              ),
              SizedBox(width: 24),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage('images/Group 51.png'),
                  ),
                  Text(
                    '%۲۰',
                    style: TextStyle(fontSize: 17, fontFamily: 'sm'),
                  )
                ],
              ),
              Spacer(),
              Text(
                'شهریور',
                style: TextStyle(
                  fontFamily: 'sm',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                ' ۲ ',
                style: TextStyle(
                  fontFamily: 'sm',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ' تسک فعال در امروز',
                style: TextStyle(
                  fontFamily: 'sm',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Text(
                  '۱۰',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
