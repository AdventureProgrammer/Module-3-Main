//Task 11
//Create an application with bottom navigation with 3 tabs Gallery,
//audio and video and design each
//page with dummy data
import 'package:flt_revision/Task11/Task11_audio.dart';
import 'package:flt_revision/Task11/Task11_gallery.dart';
import 'package:flt_revision/Task11/Task11_video.dart';
import 'package:flutter/material.dart';

class Task11BottomNavigation extends StatefulWidget {
  const Task11BottomNavigation({Key? key}) : super(key: key);

  @override
  State<Task11BottomNavigation> createState() => _Task11BottomNavigationState();
}

class _Task11BottomNavigationState extends State<Task11BottomNavigation> {
  var currentIndex_point = 0;
  @override
  Widget build(BuildContext context) {
    var screens = [
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
        child: screens.elementAt(currentIndex_point),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            currentIndex_point = index;
          });
        },
        currentIndex: currentIndex_point,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audio_file),
            backgroundColor: Colors.red,
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call_sharp),
            backgroundColor: Colors.green,
            label: 'Video',
          ),
        ],
      ),
    );
  }
}
