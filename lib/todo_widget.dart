import 'package:flutter/material.dart';
import 'package:lesson7/todo_model.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({super.key, required this.todoModel});
  final TodoModel todoModel;

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(widget.todoModel.title),
          Checkbox(value: widget.todoModel.done, onChanged: (value) {
            setState(() {
              widget.todoModel.done = value!;
            });
          }),
        ],
      ),
    );
  }
}
