import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  var textList = [
    'جلسه',
    'کارآموزی',
    'لایو',

  ];

  var subText = [
    'جلسه با خانم رضایی',
    'گفتگو راجب رونده استارتاپ',
    'دیدن لایو طبقه ۱۶',
  ];


  var timeList = [
    '۰۰:۲۵:۰۰',
    '۰۱:۰۰:۰۰',
    '۰۰:۴۰:۰۰',

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 320,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                getContainer(context, index),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget getContainer(context, index) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 11,
        bottom: 10,
        right: 0,
      ),
      child: Container(
        width: 390,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 25,
                width: 25,
                child: Image(
                  image: AssetImage('images/Play.png'),
                ),
              ),
              SizedBox(width: 10),
              Text(
                timeList[index],
                style: TextStyle(
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Spacer(),
              Text(
                subText[index],
                style: TextStyle(
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xffBFC3C8),
                ),
              ),
              SizedBox(width: 10),
              Text(
                textList[index],
                style: TextStyle(
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              getImages(index),
            ],
          ),
        ),
      ),
    );
  }

  // Widget getBoxImage(context, index) {
  //   return Container(
  //     width: 380,
  //     height: 100,
  //     child: Row(
  //       children: [getImages(index)],
  //     ),
  //   );
  // }

  Widget getImages(int index) {
    return Container(
      height: 70,
      width: 70,
      child: Image(image: AssetImage('images/item$index.png')),
    );
  }
}
