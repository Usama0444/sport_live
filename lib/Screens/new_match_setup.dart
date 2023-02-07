import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/Test_tournament/edit_match.dart';
import 'package:sport_live/Screens/Test_tournament/teams.dart';
import 'package:sport_live/Screens/tabbar_screen.dart';
import 'package:sport_live/constant/themes.dart';

class NewMatchSetup extends StatefulWidget {
  NewMatchSetup({super.key});

  @override
  State<NewMatchSetup> createState() => _NewMatchSetupState();
}

class _NewMatchSetupState extends State<NewMatchSetup> {
  var dropVal;
  int over = 0, balls = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Match Setup'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Overs', Colors.grey, 18.0.sp, FontWeight.normal),
                      const Text(':'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 200.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('${over}')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            over++;
                          });
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: AllCoustomTheme.getThemeData().primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (over > 0) {
                              over--;
                            }
                          });
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Balls Per Over', Colors.grey, 18.0.sp, FontWeight.normal),
                      const Text(':'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 200.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('${balls}')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            balls++;
                          });
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: AllCoustomTheme.getThemeData().primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (balls > 0) {
                              balls--;
                            }
                          });
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Match State', Colors.grey, 18.0.sp, FontWeight.normal),
                      const Text(':'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: DropdownButtonFormField<String>(
                        value: dropVal,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        hint: Text(
                          'Search...',
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        onChanged: (value) {
                          dropVal = value!;
                        },
                        validator: (value) => value == null ? 'Selection required' : null,
                        items: ['Group Match', 'Quarter-Final', 'Semi-Final', '3rd & 4th place', 'Final'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 300.h,
              margin: EdgeInsets.only(top: 20.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Center(child: myText('Select Team', Colors.grey, 20.sp, FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: DropdownButtonFormField<String>(
                                        value: dropVal,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        hint: Text(
                                          'Search...',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        onChanged: (value) {
                                          dropVal = value!;
                                        },
                                        validator: (value) => value == null ? 'Selection required' : null,
                                        items: ['Group Match', 'Quarter-Final', 'Semi-Final', '3rd & 4th place', 'Final'].map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              myText('DSP', Colors.red[900], 16.0.sp, FontWeight.w900),
                            ],
                          ),
                          Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: myText('Edit Squad', Colors.white, 20.sp, FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 4.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Center(child: myText('Select Team', Colors.grey, 20.sp, FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 180.w,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: DropdownButtonFormField<String>(
                                        value: dropVal,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        hint: Text(
                                          'Search...',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        onChanged: (value) {
                                          dropVal = value!;
                                        },
                                        validator: (value) => value == null ? 'Selection required' : null,
                                        items: ['Group Match', 'Quarter-Final', 'Semi-Final', '3rd & 4th place', 'Final'].map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              myText('Dhanesh xi', Colors.red[900], 16.0, FontWeight.w900),
                            ],
                          ),
                          Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: myText('Edit Squad', Colors.white, 20.sp, FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.dialog(const ToassDialog());
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontSize: 20.sp),
                        ))),
              ],
            )
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
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class ToassDialog extends StatefulWidget {
  const ToassDialog({super.key});

  @override
  State<ToassDialog> createState() => _ToassDialogState();
}

class _ToassDialogState extends State<ToassDialog> {
  Color select_team1 = Colors.white;
  Color select_team2 = Colors.white;

  Color select_bat = Colors.white;
  Color select_ball = Colors.white;

  Widget myText(txt, color, double fontsize, fontWeight) {
    return Text(
      txt,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 450.h,
          child: AlertDialog(
            contentPadding: EdgeInsets.zero,
            title: Center(child: myText('Select Toss Winner', Colors.black, 22.sp, FontWeight.bold)),
            content: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select_team1 = Colors.red;
                          select_team2 = Colors.white;
                        });
                      },
                      child: Container(
                        width: 130.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: select_team1,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: myText('DSP', Colors.black, 16.sp, FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select_team2 = Colors.red;
                          select_team1 = Colors.white;
                        });
                      },
                      child: Container(
                        width: 130.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: select_team2,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: myText('Dhanesh xi', Colors.black, 16.sp, FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: myText('Elected to :', Colors.black, 18.sp, FontWeight.w900),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    select_bat = Colors.red;
                                    select_ball = Colors.white;
                                  });
                                },
                                child: Container(
                                  width: 70.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                    color: select_bat,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset('assets/bat.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    select_ball = Colors.red;
                                    select_bat = Colors.white;
                                  });
                                },
                                child: Container(
                                  width: 70.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                    color: select_ball,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset('assets/ball.png'),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                      Get.to(const SelectionScreen());
                    },
                    child: Text('Start match'.toUpperCase()))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
