import 'package:flt_revision/MyAlertDialog.dart';
import 'package:flt_revision/Task10/Task10_main.dart';
import 'package:flt_revision/Task11/Task11_bottomNavigation3.dart';
import 'package:flt_revision/Task11/Task11_bottomnavigation.dart';
import 'package:flt_revision/Task11/Task11_video.dart';
import 'package:flt_revision/Task12/Task12_HomePage.dart';
import 'package:flt_revision/Task12/Task12_audio.dart';
import 'package:flt_revision/Task12/Task12_gallery.dart';
import 'package:flt_revision/Task11/Task11_gks.dart';
import 'package:flt_revision/Task12/Task12_video.dart';
import 'package:flt_revision/Task13/Task13.dart';
import 'package:flt_revision/Task2.dart';
import 'package:flt_revision/Task3.dart';
import 'package:flt_revision/Task4.dart';
import 'package:flt_revision/Task4rev.dart';
import 'package:flt_revision/Task5.dart';
import 'package:flt_revision/Task6.dart';
import 'package:flt_revision/Task7_1.dart';
import 'package:flt_revision/Task7_2.dart';
import 'package:flt_revision/Task8.dart';
import 'package:flt_revision/Task9/Task9.dart';
import 'package:flt_revision/animatorpassword.dart';
import 'package:flt_revision/checkbox_rev.dart';
import 'package:flt_revision/colorchangertask.dart';
import 'package:flt_revision/mypopmenubutton.dart';
import 'package:flt_revision/popmenuex.dart';
import 'package:flt_revision/radiobutton_rev.dart';
import 'package:flt_revision/screentextchanger.dart';
import 'package:flt_revision/task1.dart';
import 'package:flutter/material.dart';

import 'Task12/Task12_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyTaskOne());
  }
}
