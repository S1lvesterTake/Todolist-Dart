import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_provider/providers/todo_model.dart';
import 'package:todo_provider/widgets/task_list.dart';

class AllTaskTab extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child)=> TaskList(
          tasks: todos.allTasks,
        ),
      ),
    );
  }
}