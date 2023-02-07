import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTeams extends StatefulWidget {
  const AllTeams({super.key});

  @override
  State<AllTeams> createState() => _AllTeamsState();
}

class _AllTeamsState extends State<AllTeams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            '17 Teams',
            style: TextStyle(color: Colors.grey, fontSize: 30.sp),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 17,
                  itemBuilder: (context, index) {
                    return myCard();
                  }))
        ],
      ),
    );
  }

  Widget myCard() {
    return SizedBox(
      height: 80.h,
      width: 428.w,
      child: Card(
        child: Row(
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.grey,
                  )),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              'ASP',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
