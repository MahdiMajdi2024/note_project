import 'package:flutter/material.dart';

class TimeBoxHome extends StatefulWidget {
  const TimeBoxHome({super.key});

  @override
  State<TimeBoxHome> createState() => _TimeBoxHomeState();
}

class _TimeBoxHomeState extends State<TimeBoxHome> {
  int selectedIndex = 0;

  final List<String> timeBox = [
    '19-17',
    '17-15',
    '15-13',
    '13-12:35',
    '12:35-10',
    '8-10',
    'همه',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 18, right: 24),
          child: Container(
            width: double.infinity,
            height: 2,
            color: Color(0xffE2F6F1),
          ),
        ),
        Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: timeBox.length,
            itemBuilder: (context, index) {
              bool isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        timeBox[index],
                        style: TextStyle(
                            color: isSelected ? Colors.black : Colors.grey,
                            fontSize: 17,
                            fontFamily: 'sm',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
