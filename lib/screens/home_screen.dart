//we call all of our task we made before

import 'package:flutter/material.dart';

import 'package:todo_provider/screens/add_task_screen.dart';
import 'package:todo_provider/tabs/all_task.dart';
import 'package:todo_provider/tabs/completed_task.dart';
import 'package:todo_provider/tabs/incompleted_task.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => AddTaskScreen(),
                ),
                );
            },
          )
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          AllTaskTab(),
          InCompletedTaskTab(),
          CompletedTaskTab(),
        ],
      ),
    );
  }
}