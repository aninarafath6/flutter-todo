import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/todo_controller.dart';
import 'package:todo/screens/todo_screen.dart';
import 'package:todo/widgets/todo_card.dart';

class HomeScreen extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(TodoScreen()),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          child: Obx(
            () {
              return Container(
                child: ListView.separated(
                  itemBuilder: (context, index) => TodoCard(index: index),
                  itemCount: todoController.todos.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
