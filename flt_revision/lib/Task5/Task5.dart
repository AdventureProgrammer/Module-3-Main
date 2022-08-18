//Task 5

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskFive extends StatefulWidget {
  const TaskFive({Key? key}) : super(key: key);

  @override
  State<TaskFive> createState() => _TaskFiveState();
}

class _TaskFiveState extends State<TaskFive> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackPressed(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Press Back Button to show dialog'),
        ),
        body: Container(),
      ),
    );
  }

  _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm'),
          content: Text('Do you want to exit the App'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false); //Will not exit the App
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                 Navigator.of(context).pop(true); //Will exit the App
                // exit(0);
              },
            ),
          ],
        );
      },
    );
  }
}
