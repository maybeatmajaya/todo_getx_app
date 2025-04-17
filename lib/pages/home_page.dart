import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/task_controller.dart';

class HomePage extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do List')),
      body: Obx(() => ListView.builder(
        itemCount: taskController.tasks.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(taskController.tasks[index]),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => taskController.removeTask(index),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add'),
        child: Icon(Icons.add),
      ),
    );
  }
}
