import 'package:course1/controller/Main/cubit.dart';
import 'package:course1/controller/Main/states.dart';
import 'package:course1/view/layout/profile_screen.dart';
import 'package:course1/view/layout/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'homescreen.dart';

class navscreen extends StatefulWidget {
  @override
  State<navscreen> createState() => _navscreenState();
}

class _navscreenState extends State<navscreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    homescrren(),
    ProfileScreen(),
    setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: MainCubit.GET(context).loadingDoctors
                ? Center(child: CircularProgressIndicator())
                : screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              selectedItemColor: const Color.fromRGBO(1, 205, 170, 70),
              unselectedItemColor: const Color.fromRGBO(1, 205, 170, 170),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
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
        });
  }
}
