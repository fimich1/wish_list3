import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Задание',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            // TextButton(
            //
            //   onPressed: null,
            //   //добавить задание в листь
            //   child: const Text('Add'),
            IconButton(
              icon: const Icon(
                Icons.add_shopping_cart_rounded,
                size: 50.0,
                color: Colors.lightBlueAccent,
              ),
              tooltip: 'добавить задание в лист',
              onPressed: null,
            ),

            // InkWell(
            //   onTap: null,
            //   child: Ink.image(
            //       width: 300,
            //       height: 200,
            //       image: NetworkImage(
            //         'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg',
            //       ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
