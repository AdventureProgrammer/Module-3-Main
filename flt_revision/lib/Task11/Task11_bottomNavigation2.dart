import 'package:flt_revision/Task11/Task11_audio.dart';
import 'package:flt_revision/Task11/Task11_gallery.dart';
import 'package:flt_revision/Task11/Task11_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  var currentIndex_point = 0;
  @override
  Widget build(BuildContext context) {
    var screen = [
      Task11Audio(),
      Task11Video(),
      Task11Gallery(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Navigation',
        ),
      ),
      body: Center(
        child: screen.elementAt(currentIndex_point),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            currentIndex_point = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.red,
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            backgroundColor: Colors.green,
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery),
            backgroundColor: Colors.blue,
            label: 'Gallery',
          ),
        ],
      ),
    );
  }
}
