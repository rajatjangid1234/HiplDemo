import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';



class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _controller = TextEditingController();

  void _saveText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('shared_text', _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveText();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Save and Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}