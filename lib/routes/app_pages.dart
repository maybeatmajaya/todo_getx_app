import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../pages/add_task_page.dart';

class AppPages {
  static const initial = '/';

  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/add', page: () => AddTaskPage()),
  ];
}
