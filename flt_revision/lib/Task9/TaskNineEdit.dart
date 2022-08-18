import 'package:flt_revision/Task9/Task9.dart';
import 'package:flt_revision/Task9/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskEdit extends StatefulWidget {
  final title;
  final List<String> animalList;
  final index;
  //final String subTitle;\
  //final Function(NineModel model) onChanged;
  //final NineModel model;
  const MyTaskEdit(
      {Key? key,
      // required this.model,
      // required this.onChanged,
      // required this.subTitle,
      required this.title,
      required this.animalList,
      required this.index})
      : super(key: key);

  @override
  State<MyTaskEdit> createState() => _MyTaskEditState();
}

class _MyTaskEditState extends State<MyTaskEdit> {
  TextEditingController _titleController = TextEditingController();
  //TextEditingController _subtitleController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleController.text = widget.title!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Task',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  // _titleController = TextEditingController(text: widget.title);
                  var animalTitle = _titleController.text.toString();
                  //Navigator.pop(context, animalTitle);
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => MyTaskNine(),
                  //   ),
                  // );
                  // print(animalTitle);
                  print("----> button clickeddd");
                  setState(() {
                    print("----> index click ${widget.index}");
                    widget.animalList[widget.index] = animalTitle;
                    print(widget.animalList);
                    Navigator.of(context).pop(widget.animalList);
                  });
                },
                child: Text(
                  'Update',
                ),
              ),
              //Text(widget.title),
              //Text(widget.index),
            ],
          ),
        ),
      ),
    );
  }
}
