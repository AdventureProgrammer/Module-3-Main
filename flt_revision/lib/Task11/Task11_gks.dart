import 'package:flt_revision/Task11/Task11_audio.dart';
import 'package:flt_revision/Task11/Task11_gallery.dart';
import 'package:flt_revision/Task11/Task11_video.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // Text('Home Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text('Search Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text('Profile Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Task11Audio(),
    Task11Video(),
    Task11Gallery(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.audio_file),
                label: 'Audio',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_rounded),
                label: 'Video',
                backgroundColor: Colors.cyan),
            BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_rounded),
              label: 'Gallery',
              backgroundColor: Color.fromARGB(70, 245, 10, 175),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
