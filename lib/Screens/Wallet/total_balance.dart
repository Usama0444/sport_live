import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/Wallet/add_cash.dart';
import 'package:sport_live/constant/themes.dart';

class TotalBalanceScreen extends StatefulWidget {
  const TotalBalanceScreen({super.key});

  @override
  State<TotalBalanceScreen> createState() => _TotalBalanceScreenState();
}

class _TotalBalanceScreenState extends State<TotalBalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AllCoustomTheme.getThemeData().primaryColor,
          title: const Text('ND Sports Live'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Name : ND Sport Live',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              )),
              Container(
                width: 400.w,
                height: 70.h,
                margin: EdgeInsets.only(top: 5.h),
                child: Card(
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '(1 Credit = 1 INR)',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: AllCoustomTheme.getThemeData().primaryColor,
                                    ),
                                  ),
                                  Text(
                                    ' Credits',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(AddCash());
                                },
                                child: Text(
                                  '+ Add Credit',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                '-----Transaction History-----',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Flexible(
                  child: ListView.builder(
                      itemCount: 10,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return myCard();
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Widget myCard() {
    return SizedBox(
      width: 420.w,
      height: 140.h,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tournament Created',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Maya Strikers Belal | Mat Kabaddi 2023',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '20-03-2023 12 : 00 PM  | 1 days | theme 1 | superadmin',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: AllCoustomTheme.getThemeData().primaryColor,
                        fontWeight: FontWeight.w900,
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
