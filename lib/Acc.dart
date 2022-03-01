import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/main.dart';
import 'package:sport/delayed_animation.dart';
import 'package:sport/login_page.dart';
import 'package:sport/page/eat.dart';
import 'package:sport/page/profile.dart';
import 'package:sport/page/workout.dart';

class accPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();

        }


  class _MainPageState extends State<accPage> {
    int currentIndex = 0;

    final screens = [
      WorkoutPage(),
      EatPage(),
      ProfilePage(),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Page Principale'),
          centerTitle: true,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              label: 'Workout',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Food',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      );
    }
  }