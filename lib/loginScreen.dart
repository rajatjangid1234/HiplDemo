
import 'package:flutter/material.dart';
import 'package:practice/practice2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});
  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}
class _LoginPageScreenState extends State<LoginPageScreen> {
  final TextEditingController _controller = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void _saveText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('shared_text', _controller.text);
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 110, left: 10, right: 10),
                    height: 668,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: _controller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide:
                                        BorderSide(color: Colors.black),
                                      ),
                                      hintText: "email",
                                      prefixIcon: Icon(Icons.person_2),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter a valid Email Adre..';
                                      }
                                      return null;
                                    },
                                  ),
                                  // TextField(
                                  //   controller: _controller,
                                  //   decoration: InputDecoration(labelText: 'Enter E'),
                                  // ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              //height: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide:
                                        BorderSide(color: Colors.black),
                                      ),
                                      hintText: "Password",
                                      prefixIcon: Icon(Icons.lock),
                                      // suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Password is required.';
                                      }
                                      if (value.length.toInt() < 6) {
                                        return 'Password is 8 digit required.';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: Text(
                                  "Forgot password",
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("I agree To Terms And Conditions"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child:
                            ElevatedButton(

                              onPressed: () async {
                                final prefs = await SharedPreferences.getInstance();
                                prefs.setString('username', emailController.text);

                                // if (_formKey.currentState!.validate()) {
                                 Navigator.push(context,MaterialPageRoute(builder: (context)=>Practice2()));
                                // }
                              },
                              child: Text("Login",
                                  style: TextStyle(fontSize: 25)),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     _saveText();
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => Practice2()),
                            //     );
                            //   },
                            //   child: Text(''),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

