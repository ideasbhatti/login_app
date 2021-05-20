import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';

class HomeScreen extends StatefulWidget {
  final User user;
  HomeScreen(this.user);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome ${widget.user.username}'),
      ),
    );
  }
}
