import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return getWidgetHome() ;
  }

  Widget getWidgetHome(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 26,
                width: 85,
                decoration: BoxDecoration(
                  color: Color(0xffE2F6F1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        ' تسک فعال',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'sm',
                          fontSize: 12,
                          color: Color(0xff18DAA3),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      '۲۰',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff18DAA3),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 13),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 19, right: 5),
                child: Text(
                  'مهدی مجدی',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff18DAA3),
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15, top: 8, bottom: 5),
                    child: Text(
                      '،سلام  ',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'sm',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      '۲۱ اسفند',
                      style: TextStyle(
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              Image.asset('images/item1.png'),
            ],
          ),
        ),
        getSearchBox()
      ],
    );
  }

  Widget getSearchBox(){
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            width: 390,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/Filter.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'جستجوی تسکات ...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage('images/Search.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'مشاهده بیشتر',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'sm',
                  fontSize: 13,
                  color: Color(0xff18DAA3),
                ),
              ),
              Text(
                'دسته بندی',
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
