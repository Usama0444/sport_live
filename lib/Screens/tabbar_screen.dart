import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/Test_tournament/Info.dart';
import 'package:sport_live/Screens/Test_tournament/Matches.dart';
import 'package:sport_live/Screens/Test_tournament/StatsScreen.dart';
import 'package:sport_live/Screens/Test_tournament/awards.dart';
import 'package:sport_live/Screens/Test_tournament/edit_match.dart';
import 'package:sport_live/Screens/Test_tournament/teams.dart';
import 'package:sport_live/Screens/new_match_setup.dart';

import 'add_player.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Testing Tournaments'),
              bottom: TabBar(isScrollable: true, tabs: [
                Tab(
                  child: Text(
                    'Info',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Edit Match',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Matches',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Teams',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Stats',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Awards',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ]),
            ),
            body: const TabBarView(children: [
              InfoScreen(),
              EditMatch(),
              MatchesList(),
              AllTeams(),
              StatsScreen(),
              Awards(),
            ]),
          )),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  var ls = ['Wide', 'NoBall', 'Penalty', 'OUT'];
  var lst = ['End inning', 'Undo', 'Lower\nScoreboard', 'Other\npanels', 'Clear overly'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Select Players'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200.w,
                  height: 100.h,
                  child: Column(
                    children: [
                      myText('DSP', Colors.black, 16.0, FontWeight.bold),
                      myText('0/0 (0.0 ov)', Colors.black, 20.0, FontWeight.bold),
                      myText('CRR : 0.00', Colors.grey, 16.0, FontWeight.bold),
                      myText('Projected score : 0', Colors.grey, 16.0, FontWeight.bold),
                    ],
                  ),
                ),
                myText('vs', Colors.grey, 18.sp, FontWeight.bold),
                Container(
                  width: 200.w,
                  height: 100.h,
                  child: Column(
                    children: [
                      myText('Dhanesh xi', Colors.black, 16.0, FontWeight.bold),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: size.width,
              height: size.height * 0.05,
              margin: const EdgeInsets.only(bottom: 20),
              color: Colors.grey.withOpacity(0.2),
              child: Center(child: myText('DSP won the toss and elected to bat', Colors.black, 16.0, FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const AddNewPlayer());
                    },
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                          myText('Select Batsman', Colors.white, 22.0, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const AddNewPlayer());
                    },
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                          myText('Select Batsman', Colors.white, 22.0, FontWeight.bold),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.6,
              height: size.height * 0.05,
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              color: Colors.grey.withOpacity(0.1),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/ball.png',
                        width: 40,
                        height: 40,
                      ),
                      myText('Bowler', Colors.black, 16.0, FontWeight.bold),
                    ],
                  ),
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.03,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: myText('Select Bowler', Colors.white, 16.0, FontWeight.bold)),
                  ),
                ],
              )),
            ),
            Container(
              width: size.width * 0.95,
              height: size.height * 0.05,
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  myText('Total Over : ', Colors.black, 18.0, FontWeight.normal),
                  myText('0 runs', Colors.black, 18.0, FontWeight.bold),
                ],
              )),
            ),
            Container(
                width: size.width,
                height: size.height * 0.05,
                margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 50.w,
                        height: 40.h,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(fontSize: 20.sp, color: Colors.black),
                          ),
                        ),
                      );
                    })),
            Container(
                width: 426.w,
                height: 50.h,
                margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 95.w,
                        height: 50.h,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            ls[index],
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: index < 3 ? Colors.black : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    })),
            Container(
                width: 426.w,
                height: 50.h,
                margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    itemCount: lst.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 75.w,
                        height: 50.h,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                          color: index > 1 && index < 4
                              ? Colors.green
                              : index == 4
                                  ? Colors.grey
                                  : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            lst[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: index > 1 && index < 5 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }

  Widget myText(txt, color, double fontsize, fontWeight) {
    return Text(
      txt,
      style: TextStyle(
        color: color,
        fontSize: fontsize.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}
