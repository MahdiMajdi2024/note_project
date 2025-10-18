import 'package:flutter/material.dart';

class ContainerBox extends StatefulWidget {
  const ContainerBox({super.key});

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  bool isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCheckBox = !isCheckBox;
        });
      },
      child: Container(
        width: 380,
        height: 132,
        decoration: BoxDecoration(
          color: Colors.white,
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
                          value: isCheckBox,
                          onChanged: (checked) {
                            setState(() {
                              isCheckBox = !isCheckBox;
                            });
                          },
                        ),
                        Text(
                          'تمرین زبان انگلیسی',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'sm',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'تمرین زبان انگلیسی کتاب آموزشگاه',
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
              Image.asset('images/Group 10.png')
            ],
          ),
        ),
      ),
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
              color: Color(0xff18DAA3),
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
              padding:  EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  Text(
                    '۱۰:۳۰',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sm',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: Image(
                      image: AssetImage('images/Time.png'),
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
              color: Color(0xffE2F6F1),
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
              padding:  EdgeInsets.symmetric(horizontal: 13),
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
                  SizedBox(width: 5,),
                  SizedBox(
                    height: 14,
                    width: 14,
                    child: Image(
                      image: AssetImage('images/Edit.png',),
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
}
