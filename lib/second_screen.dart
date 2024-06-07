import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String _savedText = '';

  @override
  void initState() {
    super.initState();
    _loadText();
  }

  void _loadText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('shared_text') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: TextEditingController(text: _savedText),

          decoration: InputDecoration(labelText: 'Saved text'),
        ),
      ),
    );
  }
}
