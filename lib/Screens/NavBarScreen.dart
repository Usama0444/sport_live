import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_live/Screens/Wallet/total_balance.dart';
import 'package:sport_live/Screens/tabbar_screen.dart';
import 'package:sport_live/Screens/tournamanent.dart';
import 'package:sport_live/constant/themes.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;
  var screens = [
    const TabBarScreen(),
    const TournamentScreen(),
    const TotalBalanceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: AllCoustomTheme.getThemeData().primaryColor,
          currentIndex: currentIndex,
          selectedLabelStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: AllCoustomTheme.getThemeData().primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Tournament',
              activeIcon: Icon(
                Icons.favorite,
                color: AllCoustomTheme.getThemeData().primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.wallet,
                color: Colors.black,
              ),
              label: 'Wallet',
              activeIcon: Icon(
                Icons.wallet,
                color: AllCoustomTheme.getThemeData().primaryColor,
              ),
            ),
          ]),
    );
  }
}
