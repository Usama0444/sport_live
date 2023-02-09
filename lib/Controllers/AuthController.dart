import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/NavBarScreen.dart';
import 'package:sport_live/utils/utils.dart';

class AuthController extends GetxController {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  login() async {
    try {
      var formData = {
        'phone': '3416270778',
        'password': 'hilalahmad',
      };
      var response = await Dio().post('https://livescore.tennisworldxi.com/api/user/login', queryParameters: formData);
      if (response.statusCode == 200) {
        Get.to(const NavBarScreen());
        // Get.snackbar('${response.data['message'][0]}', '', snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      CustomToast.showToast(message: '$e');
    }
  }
}
