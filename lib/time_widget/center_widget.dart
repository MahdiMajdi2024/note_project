import 'package:flutter/material.dart';

class CenterWidget extends StatefulWidget {
  const CenterWidget({super.key});

  @override
  State<CenterWidget> createState() => _CenterWidgetState();
}

class _CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 107,
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xff18DAA3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              'ادامه',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xffFFFFFF)
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 107,
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xffE2F6F1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              'پایان',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'sm',
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
