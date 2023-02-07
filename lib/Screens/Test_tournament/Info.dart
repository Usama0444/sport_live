import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_live/constant/themes.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250.h,
                  width: 428.w,
                ),
                Container(
                  height: 200.h,
                  width: 428.w,
                  color: AllCoustomTheme.getThemeData().primaryColor,
                  child: const Center(
                    child: Text('Provided thumbnail'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 10.w,
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
                      size: 100.h,
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 150.h,
              width: 420.w,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Organiser',
                              style: TextStyle(color: Colors.grey, fontSize: 16.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Somanth ana banda'.toUpperCase(),
                              style: TextStyle(color: Colors.grey[600], fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Place',
                              style: TextStyle(color: Colors.grey, fontSize: 16.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Mumbai'.toUpperCase(),
                              style: TextStyle(color: Colors.grey[600], fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'team',
                              style: TextStyle(color: Colors.grey, fontSize: 16.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              '11'.toUpperCase(),
                              style: TextStyle(color: Colors.grey[600], fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 250.h,
              width: 420.w,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '1st Winner',
                              style: TextStyle(color: Colors.grey, fontSize: 18.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '2st Winner',
                              style: TextStyle(color: Colors.grey, fontSize: 18.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '3rd Place',
                              style: TextStyle(color: Colors.grey, fontSize: 18.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '4th Place',
                              style: TextStyle(color: Colors.grey, fontSize: 18.sp, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AllCoustomTheme.getThemeData().primaryColor,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.all(5.h),
            child: Column(
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 30.sp,
                ),
                const Text(
                  'Score',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
