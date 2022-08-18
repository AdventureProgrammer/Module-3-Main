//Task 2
//Write a code to display simple alert dialog with title,
//description and icon when button is clicked
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskTwo extends StatefulWidget {
  const MyTaskTwo({Key? key}) : super(key: key);

  @override
  State<MyTaskTwo> createState() => _MyTaskTwoState();
}

class _MyTaskTwoState extends State<MyTaskTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Two'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text('Open An Alert Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Icon(Icons.people),
                SizedBox(
                  width: 34,
                ),
                Text('Alert Dialog Title'),
              ],
            ),
            content: Text(
              'Are you sure want to procced',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'No',
                ),
              ),
            ],
          );
        });
  }
}
