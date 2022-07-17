// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  late String userName, password;
  UserPage(this.userName, this.password);

  @override
  Widget build(BuildContext context) {
    // print(this.userName + ' ' + this.password);
    return const Scaffold();
  }
}
