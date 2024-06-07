import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}
class _ExampleState extends State<Example> {
  final TextEditingController emailController = TextEditingController();
  String getdata = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
               controller:emailController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
                onChanged: (value) {
                  setState(() {

                  });
                },
              ),

              ElevatedButton(onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setString('username', emailController.text);

                setState(() {
                  getdata= prefs.getString('username')!;
                });
              },
                child: Text('Save'),),
              Text(getdata)
            ],
          ),
        ),
      ),
    );
  }
}
