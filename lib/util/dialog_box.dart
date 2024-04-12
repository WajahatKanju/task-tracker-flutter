import 'package:flutter/material.dart';
import 'package:todo_app/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
          height: 120,
          child: Column(
            children: [
              // for getting the user input
              TextField(
                controller: this.controller,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  // labelStyle: TextStyle(color: Colors.green),
                  hintText: "Add a new task",
                ),
              ),
              // save & cancell buttons
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    text: "Save",
                    onPressed: onSave, // !
                  ),
                  MyButton(
                    text: "Cancel",
                    onPressed: onCancel,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
