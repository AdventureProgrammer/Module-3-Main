//Task 3
//Write a code to display alert dialog with positive, negative
//and neutral button and display toast
//respectively user's choice
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyTaskThree extends StatefulWidget {
  const MyTaskThree({Key? key}) : super(key: key);

  @override
  State<MyTaskThree> createState() => _MyTaskThreeState();
}

class _MyTaskThreeState extends State<MyTaskThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text(
                  'Display dialog',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    Widget positiveButton = TextButton(
      onPressed: () {
        Fluttertoast.showToast(
            msg: "Positive Toast", // message
            toastLength: Toast.LENGTH_LONG, // length
            gravity: ToastGravity.TOP, // location
            backgroundColor: Colors.red.shade100,
            textColor: Colors.white);
        Navigator.of(context).pop();
      },
      child: Text(
        'Positive',
      ),
    );

    Widget negativeButton = TextButton(
      onPressed: () {
        Fluttertoast.showToast(
            msg: 'Negative Toast',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green.shade100,
            textColor: Colors.white);
        Navigator.of(context).pop();
      },
      child: Text(
        'Negative',
      ),
    );

    Widget neutralButton = TextButton(
      onPressed: () {
        Fluttertoast.showToast(
            msg: 'Neutral Toast',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.blue.shade100,
            textColor: Colors.white);
        Navigator.of(context).pop();
      },
      child: Text(
        'Neutral Button',
      ),
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      title: Text('My Title'),
      content: Text("This is my message."),
      actions: [
        Row(
          children: [positiveButton, negativeButton, neutralButton],
        )
        //okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
