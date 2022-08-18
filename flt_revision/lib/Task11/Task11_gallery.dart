import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task11Gallery extends StatelessWidget {
  const Task11Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WidgetTask11Gallery());
  }

  Widget WidgetTask11Gallery() {
    var GalleryItems = [
      'Gallery Item - 1',
      'Gallery Item - 2',
      'Gallery Item - 3',
      'Gallery Item - 4',
      'Gallery Item - 5',
    ];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(GalleryItems[index]),
          );
        });
  }
}
