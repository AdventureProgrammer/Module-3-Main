// task 10
//Create an application like gmail and display Screens according to user selection and design each 
//page with dummy data
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskTen extends StatefulWidget {
  const MyTaskTen({Key? key}) : super(key: key);

  @override
  State<MyTaskTen> createState() => _MyTaskTen();
}

class _MyTaskTen extends State<MyTaskTen> {
  var drawerIcons = [
    Icon(Icons.move_to_inbox),
    Icon(Icons.inbox),
    Icon(Icons.people),
    Icon(Icons.local_offer),
    Icon(Icons.star),
    Icon(Icons.access_time),
    Icon(Icons.label),
    Icon(Icons.send),
    Icon(Icons.send),
    Icon(Icons.note),
    Icon(Icons.mail),
    Icon(Icons.error),
    Icon(Icons.delete),
    Icon(Icons.label),
    Icon(Icons.label),
    Icon(Icons.settings),
    Icon(Icons.help),
  ];

  var drawerText = [
    "All inboxes",
    "Primary",
    "Social",
    "Promotions",
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Outbox",
    "Drafts",
    "All mail",
    "Spam",
    "Bin",
    "[Imap]/Sent",
    "[Imap]/Trash",
    "Settings",
    "Help & feedback"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Enter Search'),
        ),
      ),
      body: _getMyBody(),
      drawer: _getMailAccountDrawer(),
      floatingActionButton: _getMailFloatingActionButton(),
    );
  }

  _getMailAccountDrawer() {
    Text name = new Text('Tejas Bhatt');
    Text email = new Text('t903040@gmail.com');

    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: name,
              accountEmail: email,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerText.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: drawerIcons[index],
                    title: Text(drawerText[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _getMailFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ComposeEmailPageState()),
        );
      },
      child: Icon(Icons.edit),
      backgroundColor: Colors.red,
    );
  }

  _getMyBody() {
    return Card(
      child: ListView.builder(
        itemCount: 21,
        itemBuilder: (context, index) {
          if (index == 0) index = 1;
          return ListTile(
            title: Text('My Email Title - $index'),
            subtitle: Text('My Email Description -  $index'),
          );
        },
      ),
    );
  }
}

class ComposeEmailPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Compose",
          style: TextStyle(
            color: Colors.white,
            fontSize: 21.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.attachment,
              size: 25.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.send,
              size: 23.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.more_vert,
              size: 25.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: TextField(
              decoration: InputDecoration(
                labelText: "From",
                border: InputBorder.none,
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Divider(),
          ListTile(
            title: TextField(
              decoration: InputDecoration(
                labelText: "To",
                border: InputBorder.none,
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Divider(),
          ListTile(
            title: TextField(
              decoration: InputDecoration(
                hintText: "Subject",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
              ),
            ),
          ),
          Divider(),
          Expanded(
            flex: 4,
            child: ListTile(
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Compose Email",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
                ),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
