// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:login_signup/login/user_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _radioSelected = "Admin";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Showcase App',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  activeColor: Colors.deepPurple,
                  groupValue: _radioSelected,
                  value: 'Admin',
                  onChanged: (v) {
                    setState(() {
                      _radioSelected = v.toString();
                    });
                  },
                ),
                const Text('Admin'),
                Radio(
                  activeColor: Colors.deepPurple,
                  groupValue: _radioSelected,
                  value: 'Project Owner',
                  onChanged: (v) {
                    setState(() {
                      _radioSelected = 'Project Owner';
                    });
                  },
                ),
                const Text('Project Owner'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  TextField(
                    controller: userController,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.person), hintText: 'User Name'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.lock), hintText: 'Password'),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // print(
                      //     passwordController.text + '  ' + userController.text);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserPage(
                                userController.text, passwordController.text),
                          ));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                    child: const Text('LOG IN'),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Or connect With :'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                  child: const Text('FACEBOOK'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red[800]),
                  child: const Text('GOOGLE'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
