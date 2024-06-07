import 'package:flutter/material.dart';
import 'package:practice/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  _logout(BuildContext context) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.remove('isLoggedIn');
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPageScreen()));
  }
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.greenAccent,

        body: Column(
          children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: IconButton(
               icon: Icon(Icons.logout),
               onPressed: () => _logout(context),
             ),
        ),
            TabBar(
              dividerColor: Colors.greenAccent,
              controller: _tabController,
              tabs: const [

                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Star'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
                Tab(icon: Icon(Icons.person), text: 'Profile'),
                Tab(icon: Icon(Icons.info), text: 'Info'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(child: Text('Home Page')),
                  Center(child: Text('Star Page')),
                  Center(child: Text('Settings Page')),
                  Center(child: Text('Profile Page')),
                  Center(child: Text('Info Page')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

