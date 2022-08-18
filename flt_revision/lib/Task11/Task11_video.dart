import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task11Video extends StatelessWidget {
  const Task11Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Task11Videos(),
    );
  }

  Widget Task11Videos() {
    var videos = [
      'video 1',
      'video 2',
      'video 3',
      'video 4',
      'video 5',
    ];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(videos[index]),
          );
        });
  }
}
