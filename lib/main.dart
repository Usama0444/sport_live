import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport_live/Screens/NavBarScreen.dart';
import 'package:sport_live/Screens/Test_tournament/Info.dart';
import 'package:sport_live/Screens/Test_tournament/Matches.dart';
import 'package:sport_live/Screens/Test_tournament/StatsScreen.dart';
import 'package:sport_live/Screens/Test_tournament/awards.dart';
import 'package:sport_live/Screens/Test_tournament/edit_match.dart';
import 'package:sport_live/Screens/Test_tournament/teams.dart';
import 'package:sport_live/Screens/Wallet/add_cash.dart';
import 'package:sport_live/Screens/Wallet/total_balance.dart';
import 'package:sport_live/Screens/add_player.dart';
import 'package:sport_live/Screens/new_match_setup.dart';
import 'package:sport_live/Screens/tabbar_screen.dart';
import 'package:sport_live/Screens/tournamanent.dart';

import 'Screens/Wallet/acount_details.dart';
import 'constant/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        rebuildFactor: (mediaQueryDataOld, mediaQueryData) {
          return true;
        },
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AllCoustomTheme.getThemeData(),
            home: const NavBarScreen(),
          );
        });
  }
}
