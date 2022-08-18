import 'package:flt_revision/Task11/Task11_audio.dart';
import 'package:flt_revision/Task11/Task11_gallery.dart';
import 'package:flt_revision/Task11/Task11_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBottomNvaigationThree extends StatefulWidget {
  const MyBottomNvaigationThree({Key? key}) : super(key: key);

  @override
  State<MyBottomNvaigationThree> createState() =>
      _MyBottomNvaigationThreeState();
}

class _MyBottomNvaigationThreeState extends State<MyBottomNvaigationThree> {
  var index_Point = 0;
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
      body: screens.elementAt(index_Point),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            index_Point = index;
          });
          //index_Point = index;
        },
        currentIndex: index_Point,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.audio_file,
            ),
            label: 'Audio',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
            ),
            label: 'Video',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.browse_gallery,
            ),
            label: 'Gallery',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
