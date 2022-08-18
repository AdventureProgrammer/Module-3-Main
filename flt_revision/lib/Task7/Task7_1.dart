//Task 7
//What are different menus in android. Explain each with example
import 'package:flutter/material.dart';

class Task7_1 extends StatefulWidget {
  const Task7_1({Key? key}) : super(key: key);

  @override
  State<Task7_1> createState() => _Task7_1State();
}

class _Task7_1State extends State<Task7_1> {
  // the selected value from the dropdown
  // in the beginning, it is "Nothing selected"
  String _selectedValue = 'Nothing selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        actions: [
          // implement the popup menu button
          PopupMenuButton(
            onSelected: (String value) {
              setState(() {
                _selectedValue = value;
              });
            },
            itemBuilder: (BuildContext ctx) => [
              const PopupMenuItem(value: '1', child: Text('Option 1')),
              const PopupMenuItem(value: '2', child: Text('Option 2')),
              const PopupMenuItem(value: '3', child: Text('Option 3')),
              const PopupMenuItem(value: '4', child: Text('Option 4')),
              const PopupMenuItem(value: '5', child: Text('Option 5')),
            ],
          ),
        ],
      ),
      body: Center(
        // display the result
        child: Text(
          _selectedValue,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
