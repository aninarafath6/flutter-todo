import 'package:get/get.dart';
import 'package:todo/models/todo.dart';

class TodoController extends GetxController {
  var todos = [
    Todo(
        title: 'flutter course by on udemy ',
        description:
            'by a flutter coursse from udemy with 4999 rupees by a flutter coursse from udemy with 4999 rupeesby a flutter coursse from udemy with 4999 rupees by a flutter coursse from udemy with 4999 rupees'),
  ].obs;

  void addTodo({required String title, required String description}) {
    todos.add(Todo(title: title, description: description));
  }

  void editTodo({
    required String title,
    required String description,
    required int index,
  }) {
    var editing = todos[index];
    editing.title = title;
    editing.description = description;
    todos[index] = editing;
    update();
  }

  void deleteTodo({required int index}) {
    var deleteTodo = todos[index];
    todos.removeAt(index);
    Get.snackbar('Todo Item has been deleted',
        'the "${deleteTodo.title}" todo item is deleted');
  }
}
