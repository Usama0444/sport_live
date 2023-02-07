import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_live/constant/themes.dart';

class Awards extends StatefulWidget {
  const Awards({super.key});

  @override
  State<Awards> createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer('Player of\nthe Series', 80.w, 60.h, Colors.blue),
                  myContainer('Best\nBatsman', 80.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
                  myContainer('Best\n Bowler', 80.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
                  myContainer('Best\nFielder', 80.w, 60.h, AllCoustomTheme.getThemeData().primaryColor),
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
      margin: EdgeInsets.only(right: 5.w),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              'A',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 100.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5.h),
                          ),
                          child: Center(
                            child: Text(
                              'Ratings 126',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Team : DSP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        cardTxt('Matches : 4'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('Points : 298'),
                        VerticalDivider(
                          width: 10.w,
                          color: Colors.grey,
                        ),
                        cardTxt('POM : 2'),
                      ],
                    ),
                  ],
                )),
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
