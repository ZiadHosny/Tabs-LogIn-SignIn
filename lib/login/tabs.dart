// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/login/login_page.dart';
import 'package:login_signup/login/signup_page.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs'),
            backgroundColor: Colors.black,
            bottom: const TabBar(
              indicator: BoxDecoration(color: Colors.deepPurple),
              tabs: [
                Tab(
                  text: 'SIGN UP',
                ),
                Tab(
                  text: 'LOG IN',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [SignUpPage(), LoginPage()]),
        ),
      ),
    );
  }
}
