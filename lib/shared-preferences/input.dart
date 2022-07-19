// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/shared-preferences/page2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Input extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  void save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter Data To Save it in Shared Preferences:",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    hintText: 'Enter Data',
                    fillColor: Colors.white,
                    filled: true),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      save();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: const Text('Save Data'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo)),
                    child: const Text('Go to Page 2'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
