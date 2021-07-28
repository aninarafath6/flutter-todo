import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/todo_controller.dart';

class TodoScreen extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  final int? index;

  TodoScreen({this.index});
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descreptionController = TextEditingController();
    // ignore: deprecated_member_use
    if (!this.index.isNull) {
      titleController.text = todoController.todos[index!].title;
      descreptionController.text = todoController.todos[index!].description;
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      style: TextStyle(fontSize: 20),
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Todo Title...',
                        border: InputBorder.none,
                      ),
                    ),
                    TextField(
                      controller: descreptionController,
                      style: TextStyle(fontSize: 15),
                      autofocus: true,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Type Your Todo descreption',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Get.back(),
                    child: Text('CLOSE'),
                  ),
                  TextButton(
                    onPressed: () {
                      // ignore: deprecated_member_use
                      if (this.index.isNull) {
                        if (titleController.text.isNotEmpty) {
                          todoController.addTodo(
                            title: titleController.text,
                            description: descreptionController.text,
                          );
                          Get.back();
                        } else {
                          Get.snackbar('please fill the todo title',
                              'You will must give todo title',
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      } else {
                        todoController.editTodo(
                          title: titleController.text,
                          description: descreptionController.text,
                          index: this.index!,
                        );
                        Get.back();
                      }
                    },
                    child: Text(
                      // ignore: deprecated_member_use
                      this.index.isNull ? 'ADD' : 'EDIT',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
