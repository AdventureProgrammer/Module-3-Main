import 'package:flutter/material.dart';

class Task11Audio extends StatelessWidget {
  const Task11Audio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AudioItems());
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
