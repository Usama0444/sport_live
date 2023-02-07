import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/new_match_setup.dart';
import 'package:sport_live/constant/themes.dart';

class EditMatch extends StatefulWidget {
  const EditMatch({super.key});

  @override
  State<EditMatch> createState() => _EditMatchState();
}

class _EditMatchState extends State<EditMatch> {
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
              height: 20.h,
            ),
            SizedBox(
              height: 30.h,
              width: 400.w,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: index > 0 ? 130.w : 100.w,
                      height: 50.h,
                      margin: EdgeInsets.only(right: 20.w),
                      decoration: BoxDecoration(
                        color: index > 0 ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          lst[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }),
            ),
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
                    Get.to(NewMatchSetup());
                  },
                  child: const Text('+ New Match'),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 75.w,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'UNDO',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ),
                  Text(
                    'ASP won the toss and elected to ball',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 84.w,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Text(
                        'DELETE',
                        style: TextStyle(fontSize: 12.sp),
                      ),
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
