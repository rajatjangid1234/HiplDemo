
import 'package:flutter/material.dart';
import 'package:practice/practice.dart';
import 'package:practice/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'card.dart';
import 'homeScreen.dart';
class Practice2 extends StatefulWidget {
  const Practice2({super.key});
  @override
  State<Practice2> createState() => _Practice2State();
}
class _Practice2State extends State<Practice2> {
   final TextEditingController DummyController = TextEditingController();
  String getdata = "Rajat";
   getValue()async{
     final prefs = await SharedPreferences.getInstance();
    getdata=prefs.getString('username')!;
    DummyController.text=prefs.getString('username')!;
    setState(() {

    });
    print(getdata);
   }
   @override
  void initState() {
     getValue();
    super.initState();
  }
  String _selectedIcon = 'Home';

  void _onIconTap(String iconName) {
    setState(() {
      _selectedIcon = iconName;
    });
  }
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Rajat22(),
    const CardScreen(),
    const Profile1(),
  ];
  final List<String> _appBarTitles = ['Home', 'Screen 2', 'Card', 'Profile'];

  var Rj = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[currentIndex]),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Expanded(child: screens[currentIndex]),
                   Text(getdata),
          TextField(
             controller: DummyController,

          ),
      Container(
            height: 2,
            color: Colors.black,
          ),
          Container(
            height: 50,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Container(
                    color: currentIndex == 0?Color(0xff0B578E):Colors.blue,
                    height: 100,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined),
                        Text("Home")
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    setState(() {
                      currentIndex=1;
                    });
                  },
                  child: Container(
                    color: currentIndex == 1?Color(0xff0B578E):Colors.blue,
                    height: 100,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star),
                        Text("Star")
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      currentIndex=2;
                    });
                  },
                  child: Container(
                    color: currentIndex == 2?Color(0xff0B578E):Colors.blue,
                    height: 100,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        Text("Setting")
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      currentIndex=3;
                    });
                  },
                  child: Container(
                    width: 70,
                    color: currentIndex == 3?Color(0xff0B578E):Colors.blue,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        Text("Profile"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:practice/practice.dart';
// import 'package:practice/profile.dart';
// import 'card.dart';
// import 'homeScreen.dart';
//
// class Practice2 extends StatefulWidget {
//   const Practice2({Key? key}) : super(key: key);
//
//   @override
//   State<Practice2> createState() => _Practice2State();
// }
//
// class _Practice2State extends State<Practice2> {
//   int _currentIndex = 0;
//   final List<Widget> _screens = [
//     const HomePage(),
//     const Rajat22(),
//     const CardScreen(),
//     const Profile1(),
//   ];
//   final List<String> _appBarTitles = ['Home', 'Screen 2', 'Card', 'Profile'];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_appBarTitles[_currentIndex]),
//       ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.screen_rotation),
//             label: 'Screen 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.credit_card),
//             label: 'Card',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

