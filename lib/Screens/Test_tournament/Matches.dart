import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/new_match_setup.dart';
import 'package:sport_live/constant/themes.dart';

class MatchesList extends StatefulWidget {
  const MatchesList({super.key});

  @override
  State<MatchesList> createState() => _MatchesListState();
}

class _MatchesListState extends State<MatchesList> {
  var lst = [
    'Overlays',
    'Last 5 Matches',
    'Tournament Name',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.to(NewMatchSetup());
                  },
                  child: const Text('Fixtures'),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return myCardView();
                    }))
          ],
        ),
      ),
    );
  }

  Widget myCardView() {
    return SizedBox(
      width: 400.w,
      height: 200.h,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  cardTxt('Match No.9'),
                  VerticalDivider(
                    width: 10.w,
                    color: Colors.grey,
                  ),
                  cardTxt('Group Match'),
                  VerticalDivider(
                    width: 10.w,
                    color: Colors.grey,
                  ),
                  cardTxt('4 Overs'),
                  VerticalDivider(
                    width: 10.w,
                    color: Colors.grey,
                  ),
                  cardTxt('28-jan-2023'),
                  VerticalDivider(
                    width: 10.w,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 40.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: AllCoustomTheme.getThemeData().primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Live',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'ASP',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '10/0',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '(0.2 ov)',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  width: 40.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const FittedBox(child: Text('VS')),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Dhanesh xi',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ASP won the toss and elected to ball',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
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
