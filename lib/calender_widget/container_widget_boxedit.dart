import 'package:flutter/material.dart';

import '../hive_flutter/container_box.dart';

class ContainerWidgetBoxEdit extends StatefulWidget {
  const ContainerWidgetBoxEdit({super.key});

  @override
  State<ContainerWidgetBoxEdit> createState() => _ContainerWidgetBoxEditState();
}

class _ContainerWidgetBoxEditState extends State<ContainerWidgetBoxEdit> {
  bool isCheckBox = false;

  bool index = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.keyboard_arrow_down_rounded),
                SizedBox(width: 103),
                Text(
                  'تسک های انجام شده',
                  style: TextStyle(
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 27),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isCheckBox = !isCheckBox;
                });
              },
              child: Container(
                width: 380,
                height: 132,
                decoration: BoxDecoration(
                  color: getColorBox(),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 3,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                  checkColor: Color(0xff18DDA3),
                                  focusColor: Color(0xff18DDA3),
                                  activeColor: Colors.white,
                                  value: isCheckBox,
                                  onChanged: (checked) {
                                    setState(() {
                                      isCheckBox = !isCheckBox;
                                    });
                                  },
                                ),
                                Text(
                                  'آموزش طراحی رابط کاربری',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'sm',
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              ' UI آموزش و تمرین',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'sm',
                                fontSize: 13,
                              ),
                            ),
                            Spacer(),
                            getItemTimeBox()
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'images/Dictionary-pana 1.png'
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget getItemTimeBox() {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 83,
            decoration: BoxDecoration(
              color: (isCheckBox == index)
                  ? Color(0xff18DAA3)
                  : Colors.greenAccent.withOpacity(0.9),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff18DAA3),
                  blurRadius: 0.3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  Text(
                    '۱۵:۱۰',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sm',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: Image(
                      image: AssetImage(
                        'images/Time.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 30,
            width: 83,
            decoration: BoxDecoration(
              color: (isCheckBox == index)
                  ? Color(0xffE2F6F1)
                  : Colors.white70.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  blurRadius: 0.3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  Text(
                    'ویرایش',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sm',
                      fontSize: 12,
                      color: Color(0xff18DAA3),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 15,
                    width: 14,
                    child: Image(
                      image: AssetImage(
                        'images/Edit.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color getColorBox() {
    if (isCheckBox == index) {
      return Colors.white;
    } else {
      return Colors.grey;
    }
  }
}
