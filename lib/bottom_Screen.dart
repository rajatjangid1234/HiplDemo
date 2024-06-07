import 'package:flutter/material.dart';
import 'package:practice/practice.dart';
import 'package:practice/profile.dart';
import 'card.dart';
import 'homeScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  final screens = [
          HomePage(),
          Rajat22(),
          CardScreen(),
          Profile1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 2, // Height of the line
            color: Colors.red, // Color of the line
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffF0D75F),
            unselectedItemColor: const Color(0xff595858),
            currentIndex: currentIndex,
            onTap: (index) {

              setState(() {
                currentIndex = index;
              });

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => screens[index]));
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Container(
                  padding: EdgeInsets.zero, // Remove padding
                  margin: EdgeInsets.zero, // Remove margin
                  height: 60,
                  width: 60,
                  color: currentIndex == 0 ? Colors.green : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: currentIndex == 0 ? const Color(0xffF0D75F) : Colors.black,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentIndex == 0 ? const Color(0xffF0D75F) : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                ),
                backgroundColor: Colors.green,
                icon: Container(
                  padding: EdgeInsets.zero, // Remove padding
                  margin: EdgeInsets.zero, // Remove margin
                  height: 60,
                  width: 60,
                  color: currentIndex == 1 ? Colors.green : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.ice_skating,
                        color: currentIndex == 1 ? const Color(0xffF0D75F) : Colors.black,
                      ),
                      Text(
                        "Transition",
                        style: TextStyle(
                          color: currentIndex == 1 ? const Color(0xffF0D75F) : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.zero, // Remove padding
                  margin: EdgeInsets.zero, // Remove margin
                  height: 60,
                  width: 60,
                  color: currentIndex == 2 ? Colors.green : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.icecream,
                        color: currentIndex == 2 ? const Color(0xffF0D75F) : Colors.black,
                      ),
                      Text(
                        "Card",
                        style: TextStyle(
                          color: currentIndex == 2 ? const Color(0xffF0D75F) : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 60,
                  width: 60,
                  color: currentIndex == 3 ? Colors.green : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        color: currentIndex == 3 ? const Color(0xffF0D75F) : Colors.black,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: currentIndex == 3 ? const Color(0xffF0D75F) : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                label: "",
                backgroundColor: const Color(0xff000000),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
