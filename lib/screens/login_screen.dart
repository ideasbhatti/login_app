import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                "img/login2.png",
                height: MediaQuery.of(context).size.height / 2.50,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              // For App Name
              Text(
                'Genious Login',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: TextField(
                  onChanged: (val) {
                    username = val;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      // horizontal: 20,
                      vertical: 15,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email or Username',
                    prefixIcon: Icon(Icons.account_box_rounded, size: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                child: TextField(
                  onChanged: (val) {
                    password = val;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  print('Username: $username, Password: $password');
                  User user = User(1, username, password);
                  if (user.login()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(user),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width / 2,
                  // margin: EdgeInsets.symmetric(horizontal: 90),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
