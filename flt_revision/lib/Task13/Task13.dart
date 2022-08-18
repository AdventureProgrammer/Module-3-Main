//Task 13
// create a Phone call App when user first
//time open the app it will automatically generate one dialog
//which has two option allow,deny if click on allow permission
//is grant in settings
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTask13 extends StatefulWidget {
  const MyTask13({Key? key}) : super(key: key);

  @override
  State<MyTask13> createState() => _MyTask13State();
}

class _MyTask13State extends State<MyTask13> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showAlert(context));
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(children: [
            // Image.network(
            //   'https://flutter-examples.com/wp-content/uploads/2019/12/android_icon.png',
            //   width: 50,
            //   height: 50,
            //   fit: BoxFit.contain,
            // ),
            Icon(Icons.people),
            Text('  Alert Dialog Title. ')
          ]),
          content: Text("Are You Sure Want To Open App Setttings?"),
          actions: <Widget>[
            TextButton(
              child: Text("Allow"),
              onPressed: () {
                AppSettings.openAppSettings();
              },
            ),
            TextButton(
              child: Text("Deny"),
              onPressed: () {
                //Put your code here which you want to execute on Cancel button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
