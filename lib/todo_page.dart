import 'package:flutter/material.dart';
import 'package:lesson7/todo_bottom_sheet.dart';
import 'package:lesson7/todo_model.dart';
import 'package:lesson7/todo_widget.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<TodoModel> todos = [
    TodoModel(title: 'title', desc: 'desc', done: false),
    TodoModel(title: 'asdadas', desc: 'desc', done: false),
    TodoModel(title: 'title123', desc: 'desc', done: true),
    TodoModel(title: '333333', desc: 'desc', done: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoWidget(todoModel: todos[index]);
        },
      ),
      floatingActionButton: InkWell(onTap: (){
        showModalBottomSheet(context: context, builder: (context){
          return TodoBottomSheet();
        });
      }, child: Container(width: 50, height: 50, color: Colors.amber,)),
    );
  }
}
