// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String _selectedIcon = 'Home';
//
//   void _onIconTap(String iconName) {
//     setState(() {
//       _selectedIcon = iconName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom App Bar Example'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () => _onIconTap('Home'),
//           ),
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () => _onIconTap('Settings'),
//           ),
//           IconButton(
//             icon: Icon(Icons.info),
//             onPressed: () => _onIconTap('Info'),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Selected Icon: $_selectedIcon',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             if (_selectedIcon == 'Home')
//               Icon(
//                 Icons.home,
//                 size: 100.0,
//                 color: Colors.blue,
//               )
//             else if (_selectedIcon == 'Settings')
//               Icon(
//                 Icons.settings,
//                 size: 100.0,
//                 color: Colors.green,
//               )
//             else if (_selectedIcon == 'Info')
//                 Icon(
//                   Icons.info,
//                   size: 100.0,
//                   color: Colors.orange,
//                 )
//           ],
//         ),
//       ),
//     );
//   }
// }
