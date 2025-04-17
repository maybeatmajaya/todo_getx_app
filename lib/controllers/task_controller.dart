import 'package:get/get.dart';

class TaskController extends GetxController {
  var tasks = <String>[].obs;

  void addTask(String task) {
    tasks.add(task);
  }

  void removeTask(int index) {
    tasks.removeAt(index);
  }
}
