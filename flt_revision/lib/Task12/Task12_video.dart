import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task12Video extends StatelessWidget {
  const Task12Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Page',
        ),
      ),
      body: VideoItems(),
    );
  }

  Widget VideoItems() {
    var video = [
      'Video - 1',
      'Video - 2',
      'Video - 3',
      'Video - 4',
      'Video - 5',
    ];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(video[index]));
        });
  }
}
