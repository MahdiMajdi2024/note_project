import 'package:flutter/material.dart';

class WeekDaysRow extends StatefulWidget {
  @override
  State<WeekDaysRow> createState() => _WeekDaysRowState();
}

class _WeekDaysRowState extends State<WeekDaysRow> {
  final List<Map<String, String>> days = [
    {"day": "شنبه", "date": "۱"},
    {"day": "یک‌شنبه", "date": "۲"},
    {"day": "دوشنبه", "date": "۳"},
    {"day": "سه‌شنبه", "date": "۴"},
    {"day": "چهارشنبه", "date": "۵"},
    {"day": "پنج‌شنبه", "date": "۶"},
    {"day": "جمعه", "date": "۷"},
  ];

  final int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Row(
          children: List.generate(days.length, (index) {
            bool isSelected = index == selectedIndex;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == index;
                  });
                },
                child: Container(
                  width: 70,
                  height: 100,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xFF00C98D) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected ? Color(0xFF00C98D) : Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        days[index]["day"]!,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        days[index]["date"]!,
                        style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'sm'),
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'sm'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
