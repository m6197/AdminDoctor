

import 'package:course1/layout/profile_screen.dart';
import 'package:course1/layout/setting_screen.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';








class navscreen extends StatefulWidget {


  @override
  State<navscreen> createState() => _navscreenState();
}
class _navscreenState extends State<navscreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const homescrren(),
    const ProfileScreen(),
    setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         iconSize: 30,
         selectedItemColor: const Color.fromRGBO(1, 205, 170,70),
         unselectedItemColor: const Color.fromRGBO(1, 205, 170,170),
         showSelectedLabels: false,
         showUnselectedLabels: false,
         currentIndex: currentIndex,
         onTap: (index)
         {
           setState(() {
             currentIndex=index;
           });
         },
         items: const [
           BottomNavigationBarItem(
               icon: ImageIcon(
                 AssetImage(
                   'assets/image/noun-home-4796082.png',
                 ),
               ),
             label: '',
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage(
                 'assets/image/noun-profile-709597.png',
               ),
             ),
             label: '',
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage(
                 'assets/image/settings.png',
               ),
             ),
             label: '',
           ),
         ],
       ),

    );
  }
}
