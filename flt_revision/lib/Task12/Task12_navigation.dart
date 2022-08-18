//Create an application with Navigation Drawer with 3 tabs Gallery,
//audio and video and design each
//page with dummy data

import 'package:flt_revision/Task12/Task12_audio.dart';
import 'package:flt_revision/Task12/Task12_gallery.dart';
import 'package:flt_revision/Task12/Task12_video.dart';
import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Drawer',
        ),
      ),
      body: Drawer(
        child: Material(
          color: Colors.cyan,
          child: ListView(
            children: <Widget>[
              buildHeader(),
              Divider(
                thickness: 5,
              ),
              buildMenuItem(
                text: 'Gallery',
                icon: Icons.browse_gallery_outlined,
                onClicked: () => selectedItem(context, 0),
              ),
              buildMenuItem(
                text: 'Audio',
                icon: Icons.audio_file,
                onClicked: () => selectedItem(context, 1),
              ),
              buildMenuItem(
                text: 'Video',
                icon: Icons.video_call,
                onClicked: () => selectedItem(context, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.amber;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(text),
      onTap: onClicked,
    );
  }

  String imgUrl =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
  Widget buildHeader() => InkWell(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(imgUrl),
                backgroundColor: Colors.lightBlue,
              ),
              Text(
                'Tejas Bhatt',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                't903040@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      );

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Task12Gallery(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Task12Audio(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Task12Video(),
          ),
        );
        break;
    }
  }
}
