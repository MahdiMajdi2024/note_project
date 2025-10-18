import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  const ImageList({super.key});

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  var imagesList = [
    'images/Group 64.png',
    'images/Group 62.png',
    'images/Group 63.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Image(
                    height:210,
                    image: AssetImage(
                      imagesList[i],
                    ),
                  ),
              ],
            ),
          ),
        ),
        getText()
      ],
    );
  }

  Widget getText(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24, left: 24, bottom: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: 10),
                child: Text(
                  'مشاهده بیشتر',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'sm',
                    fontSize: 13,
                    color: Color(0xff18DAA3),
                  ),
                ),
              ),
              Text(
                'تسک های امروز',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'sm',
                  fontSize: 17,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}
