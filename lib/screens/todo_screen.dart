import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      style: TextStyle(fontSize: 20),
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Todo Title...',
                        border: InputBorder.none,
                      ),
                    ),
                    TextField(
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
                    onPressed: () {},
                    child: Text('CLOSE'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'ADD ',
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
