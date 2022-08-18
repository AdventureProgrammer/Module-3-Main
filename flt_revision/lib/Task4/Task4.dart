//Task 4

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskFour extends StatefulWidget {
  const MyTaskFour({Key? key}) : super(key: key);

  @override
  State<MyTaskFour> createState() => _MyTaskFourState();
}

var ListCity = [
  'Ahemdabad',
  'Bhavnagar',
  'bharuch',
  'surat',
  'Navsari',
  'Changodar'
];

class _MyTaskFourState extends State<MyTaskFour> {
  var selectedCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Task 4'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: (() => showAlert(context)),
                child: Text('Open Alert Dialog'),
              ),
            ),
            Text('$selectedCity'),
          ],
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pick City',
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.blueAccent,
          ),
          content: setupAlertDialoagContainer(),
        );
      },
    );
  }

  Widget setupAlertDialoagContainer() {
    return Container(
      height: 200.0, // Change as per your requirement
      width: 100.0, // Change as per your requirement
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          // ListTile(
          //   title: Text('Gujarat, India'),
          // );
          return ListTile(
            tileColor: Colors.blue.shade100,
            title: Text(
              ListCity[index],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              setState(() {
                if (index == 0) {
                  selectedCity = 'Ahemdabad';
                  Navigator.of(context).pop();
                } else if (index == 1) {
                  selectedCity = 'Bhavnagar';
                  Navigator.of(context).pop();
                } else if (index == 2) {
                  selectedCity = 'Bharuch';
                  Navigator.of(context).pop();
                } else if (index == 3) {
                  selectedCity = 'Surat';
                  Navigator.of(context).pop();
                } else if (index == 4) {
                  selectedCity = 'Navsari';
                  Navigator.of(context).pop();
                } else if (index == 5) {
                  selectedCity = 'Changodar';
                  Navigator.of(context).pop();
                }
              });
            },
          );
          //  return Center(child: ListAlertItems());
        },
      ),
    );
  }
}
