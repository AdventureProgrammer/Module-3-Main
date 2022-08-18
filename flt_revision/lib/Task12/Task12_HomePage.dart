//Task 12

import 'package:flt_revision/Task12/Task12_navigation.dart';
import 'package:flt_revision/Task12/Task12_navigation2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Navigation Drawer',
        ),
      ),
      drawer: NavigationDrawerExampleTwo(),
      body: Container(),
    );
  }
}
