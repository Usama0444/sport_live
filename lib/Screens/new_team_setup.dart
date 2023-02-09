import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Controllers/TeamController.dart';
import 'package:sport_live/Screens/select_players.dart';

class TeamSetup extends StatelessWidget {
  TeamSetup({super.key});
  var controller = Get.put(TeamCotroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Team Setup'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Team Logo',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.takePhoto();
                      },
                      child: Stack(
                        children: [
                          Container(
                              width: 120.w,
                              height: 120.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: GetBuilder<TeamCotroller>(
                                builder: (controller) {
                                  return ClipOval(
                                    child: controller.img == null
                                        ? Image.asset(
                                            'assets/default.jpg',
                                            fit: BoxFit.fill,
                                          )
                                        : Image.memory(
                                            controller.img!,
                                            fit: BoxFit.fill,
                                          ),
                                  );
                                },
                              )),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Icon(
                                Icons.camera_alt,
                                size: 35.sp,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              TextField(
                controller: controller.teamName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text('Team name'),
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
                        Get.to(const SelectPlayers());
                      },
                      child: const Text('Add Players'),
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
}
