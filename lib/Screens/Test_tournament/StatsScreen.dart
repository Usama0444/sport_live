import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_live/constant/themes.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(5.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer('Batting\nRecords', 80.w, 60.h, Colors.blue),
                  myContainer('Bowling\nRecords', 80.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
                  myContainer('Keeping &\nFieding Records', 150.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
                  myContainer('Partnership\nRecords', 100.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
                ],
              ),
              SizedBox(
                height: 80.h,
                width: 400.w,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Player',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 60.h,
                  width: 400.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 310.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.yellow[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Most runs in tournament'),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        )),
                      ),
                      ElevatedButton(onPressed: () {}, child: const Text('Show'))
                    ],
                  )),
              Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return myCard(index + 1);
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(txt, width, hight, color) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }

  Widget myCard(n) {
    return SizedBox(
      width: 420.w,
      height: 100.h,
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60.h,
                )),
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          '# $n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.cyan,
                          ),
                        ),
                        VerticalDivider(
                          width: 4.w,
                          color: Colors.grey,
                        ),
                        Text(
                          'A (ASP)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        cardTxt('Mat: 5'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('Inng : 5'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('Ball : 20'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('Avg : 126.0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        cardTxt('SR : 300.00'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('Not Out : 4'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('best : 20*'),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              width: 4.w,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 30.w,
                height: 80.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AllCoustomTheme.getThemeData().primaryColor),
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Center(
                  child: Text(
                    'Runs\n126',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cardTxt(txt) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }
}
