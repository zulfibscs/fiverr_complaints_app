import 'package:fiverr_complaint_app/Screens/dashboard_screen.dart';
import 'package:fiverr_complaint_app/Screens/profile_screen.dart';
import 'package:fiverr_complaint_app/Screens/send_notification.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:PersistentTabView(

        context,
        controller: PersistentTabController(initialIndex: 0),
        items: [
          PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            activeColorSecondary: Colors.white,
            icon: Icon(Icons.home),
            title: 'Home',
            textStyle: TextStyle(color: Colors.black),
          ),
          PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            activeColorSecondary: Colors.white,
            icon: Icon(Icons.notifications),
            title: 'Notification',
            textStyle: TextStyle(color: Colors.black),
          ),
          PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            activeColorSecondary: Colors.white,
            icon: Icon(Icons.person),
            title: 'Profile',
            textStyle: TextStyle(color: Colors.black),
          ),

        ],
        screens: [
          DashboardScreen(),
          SendNotification(fromDashboard: false,),
          ProfileScreen(),
        ],

        confineInSafeArea: true,
        backgroundColor: Colors.white,

        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style7,


      ),
    );

  }
}
