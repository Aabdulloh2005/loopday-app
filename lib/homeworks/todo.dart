import 'package:flutter/material.dart';

class Todo {
  final String title;
  bool isCompleted;

  Todo({
    required this.title,
    this.isCompleted = false,
  });
}

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Todo> todos = [
    Todo(title: 'Task 1'),
    Todo(title: 'Task 2'),
    Todo(title: 'Task 3'),
  ];

  void toggleTodoCompletion(int index) {
    setState(() {
      todos[index].isCompleted = !todos[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), // Border color
              borderRadius: BorderRadius.circular(15.0), // Rounded corners
            ),
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: ListTile(
              leading: Icon(
                todos[index].isCompleted
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: todos[index].isCompleted ? Colors.green : Colors.grey,
              ),
              title: Text(
                todos[index].title,
                style: TextStyle(
                  decoration: todos[index].isCompleted
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              onTap: () {
                toggleTodoCompletion(index);
              },
            ),
          );
        },
      ),
    );
  }
}
