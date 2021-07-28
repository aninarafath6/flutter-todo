import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/todo_controller.dart';
import 'package:todo/screens/todo_screen.dart';

class TodoCard extends StatelessWidget {
  TodoCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      behavior: HitTestBehavior.translucent,
      background: Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.remove_circle, color: Colors.red[300])),
      onDismissed: (direction) {
        todoController.deleteTodo(index: index);
        print(direction);
      },
      child: InkWell(
        onTap: () => Get.to(TodoScreen(index: index)),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(
              0xABFFE9CC,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .60,
                child: Text(
                  todoController.todos[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                todoController.todos[index].description,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
