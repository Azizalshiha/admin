import 'package:admin/screens/waiting_for_approval.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/notifications.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {

  int _currentIndex = 0;

  final screens = [
    WaitingForApproval(),
    Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222B44), //Colors.white, const Color(0xff0A0E19),


      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff222B44),
        iconSize: 25,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xffF0D5A3),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app_rounded),
            label: 'approval',
            backgroundColor: const Color(0xff222B44),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: const Color(0xff222B44),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
      ),
    );
  }
}
