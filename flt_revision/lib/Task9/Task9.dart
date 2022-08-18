//complete task 9
// Write a code to display edit, view, delete options with context menu in listview and also perform
//respective operation on user's choice

import 'package:flt_revision/Task9/TaskNineEdit.dart';
import 'package:flt_revision/Task9/TaskNineView.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class MyTaskNine extends StatefulWidget {
  //final String title;

  @override
  State<MyTaskNine> createState() => _MyTaskNineState();
}

class _MyTaskNineState extends State<MyTaskNine> {
  GlobalKey<FormState> _key = GlobalKey();
  List<String> myList = [
    'Dog',
    'Cat',
    'Elephant',
    'Horse',
    'Lion',
  ];
  int index_point = 0;
  //late var name;
  //List<String> myList = [];

  @override
  Widget build(BuildContext context) {
    //final routeData = ModalRoute.of(context).
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('My Menu'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: ((_, index) {
                  String name = myList[index];

                  index_point = index;

                  return ListTile(
                    title: Text(
                      myList[index],
                    ),
                    trailing: button(index),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  button(index) => PopupMenuButton(
        //initialValue: 5,
        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
          PopupMenuItem(
            value: 'edit',
            child: Text('Edit'),
          ),
          PopupMenuItem(
            value: 'view',
            child: Text('View'),
          ),
          PopupMenuItem(
            value: 'delete',
            child: Text('Delete'),
            // onTap: () {},
            //onTap: () {}
          ),
        ],
        onSelected: (String value) =>
            actionPopUpItemSelected(value, myList, index, myList[index]),
      );

  String actionPopUpItemSelected(
      String value, List<String> nameA, int index, String nameB) {
    String message = '';
    if (value == 'edit') {
      print("-----------------------> index send $index");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyTaskEdit(
            title: nameB,
            animalList: nameA,
            index: index,
          ),
        ),
      ).then((valueone) => {
            if (valueone != null)
              {
                // Text('${myList[index]}'),
                // myList
                myList.forEach((element) {
                  setState(() {
                    //return myList.add(element);
                  });
                })
              }
          });
      message = 'You selected edit for $nameB ';
      // var indexA = nameA.indexOf(nameB);
      // if (indexA != null) {
      //   nameA.remove(nameB);
      //   nameA.insert(indexA, 'ABCDEF');
      // }
      // print(nameA);
      // //nameA.insert(indexA, 'ABC');

      // print('INDEX ====>$indexA');
      // print(nameA);
    } else if (value == 'view') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyTaskNineView(
            name: nameB,
          ),
        ),
      );
      message = 'You selected view for $nameB ';
    } else if (value == 'delete') {
      print(index);
      message = 'You selected delete for $nameB';
      setState(() {
        nameA.remove(nameB);
      });

      print(nameA);
      //message = 'Item deleted success fully for $myList';
    }
    print('==============>' + message);
    // return ListTile(
    //   title: Text(message),
    // );
    return message;
  }
}
