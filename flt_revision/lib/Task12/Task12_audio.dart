import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task12Audio extends StatelessWidget {
  const Task12Audio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Audio Page'),
        ),
        body: AudioItems());
  }

  Widget AudioItems() {
    var audio = [
      'Audio - 1',
      'Audio - 2',
      'Audio - 3',
      'Audio - 4',
      'Audio - 5',
    ];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Center(child: Text(audio[index])),
          );
        }));
  }
}
