import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/task_controller.dart';

class AddTaskPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TaskController taskController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Task')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Task Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  taskController.addTask(textController.text);
                  Get.back();
                }
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
