import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static String? userToken;
  static Color primaryColorString = Color(0xFF3EB489);
  static Color secondaryColorString = Color(0xFF3145f5);
  static List<String> colors = ['#4FBE9F', '#32a852', '#e6230e', '#760ee6', '#db0ee6', '#db164e'];
  static int colorsIndex = 0;
}

class CustomToast {
  static showToast({required String message, bool isShowSingle = true}) {
    try {
      if (isShowSingle) Fluttertoast.cancel();
      Fluttertoast.showToast(
        msg: message,
      );
    } catch (e) {
      debugPrint("Exception in toast: $e");
    }
  }
}
