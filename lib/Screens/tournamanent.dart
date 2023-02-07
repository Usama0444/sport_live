import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  bool isCricket = false;
  bool isKabaddi = false;
  bool isTableTennis = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sports Live'),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                width: 400.w,
                height: 40.h,
                margin: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.spoke,
                      color: Colors.grey[900],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isCricket,
                            onChanged: (v) {
                              isCricket = v!;
                              setState(() {});
                            }),
                        Text('Cricket'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isKabaddi,
                            onChanged: (v) {
                              isKabaddi = v!;
                              setState(() {});
                            }),
                        Text('Kabaddi'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isTableTennis,
                            onChanged: (v) {
                              isTableTennis = v!;
                              setState(() {});
                            }),
                        Text('Table Tennis'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 10.h),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return myCard();
                    }))
          ],
        ),
      ),
    );
  }

  Widget myCard() {
    return SizedBox(
      width: 420.w,
      height: 300.h,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 420.w,
                  height: 220.h,
                ),
                Container(
                  width: 420.w,
                  height: 220.h,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Thumbnial here'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.h),
                          color: Colors.yellow,
                        ),
                        child: Center(
                          child: Text(
                            'Cricket',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.h),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            'Live',
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
                )
              ],
            ),
            Text(
              'Testing Tournament',
              style: TextStyle(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Starts : 02-02-2023 | Ends : 02-05-2023',
              style: TextStyle(fontSize: 16.sp, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
