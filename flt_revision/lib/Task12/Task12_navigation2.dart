import 'package:flt_revision/Task12/Task12_audio.dart';
import 'package:flt_revision/Task12/Task12_gallery.dart';
import 'package:flt_revision/Task12/Task12_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawerExampleTwo extends StatelessWidget {
  String imgUrl =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

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
                thickness: 2,
              ),
              buildMenuItem(
                text: 'Gallery',
                icon: Icons.browse_gallery,
                onClicked: () => selectIndexForPages(context, 0),
              ),
              buildMenuItem(
                text: 'Audio',
                icon: Icons.audio_file,
                onClicked: () => selectIndexForPages(context, 1),
              ),
              buildMenuItem(
                text: 'Video',
                icon: Icons.video_call_sharp,
                onClicked: () => selectIndexForPages(context, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
              ),
              Text(
                't903040@gmail.com',
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(text),
      onTap: onClicked,
    );
  }

  void selectIndexForPages(BuildContext context, int index) {
    if (index == 0) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Task12Gallery(),
        ),
      );
    } else if (index == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Task12Audio(),
        ),
      );
    } else if (index == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Task12Video(),
        ),
      );
    }
  }
}
