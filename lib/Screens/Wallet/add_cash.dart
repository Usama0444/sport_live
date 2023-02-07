import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/Wallet/acount_details.dart';
import 'package:sport_live/constant/themes.dart';

class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Credit : Choose Amount'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 120.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AllCoustomTheme.getThemeData().primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Balance',
                            style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                          ),
                          Icon(
                            Icons.currency_rupee,
                            size: 30.sp,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: AllCoustomTheme.getThemeData().primaryColor,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 350.w,
                height: 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.currency_rupee),
                            Text('1000'),
                          ],
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.currency_rupee),
                            Text('2000'),
                          ],
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.currency_rupee),
                            Text('3000'),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 350.w,
                height: 100.h,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text(
                            'Enter Amount : ',
                            style: TextStyle(
                              fontSize: 22.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.grey,
                            size: 23.sp,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Amount',
                            hintStyle: TextStyle(
                              fontSize: 23.sp,
                              color: Colors.grey,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 360.w,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(AccountDetails());
                        },
                        child: const Text('Make Payment'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
