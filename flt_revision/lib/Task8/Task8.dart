// Task 8
// Write a code to display profile and logout option in options menu
import 'package:flutter/material.dart';

class TaskEight extends StatelessWidget {
  var myMenuItems = <String>[
    'Profile',
    'Logout',
  ];

  void onSelect(item) {
    switch (item) {
      case 'Profile':
        print('Profile clicked');

        break;
      case 'Logout':
        print('Logout clicked');

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task 8"),
          actions: <Widget>[
            PopupMenuButton<String>(
                onSelected: onSelect,
                itemBuilder: (BuildContext context) {
                  return myMenuItems.map((String choice) {
                    return PopupMenuItem<String>(
                      child: Text(choice),
                      value: choice,
                    );
                  }).toList();
                })
          ],
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
