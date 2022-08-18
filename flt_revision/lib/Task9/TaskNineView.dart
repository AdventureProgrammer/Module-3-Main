import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskNineView extends StatefulWidget {
  final String name;
  const MyTaskNineView({Key? key, required this.name}) : super(key: key);

  @override
  State<MyTaskNineView> createState() => _MyTaskNineViewState();
}

class _MyTaskNineViewState extends State<MyTaskNineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View Data',
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}
