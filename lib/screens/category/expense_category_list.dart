import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expensCatList extends StatelessWidget {
  const expensCatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Card(
            elevation:2 ,
            child: ListTile(
              title: Text('expense category $index'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: 100);
  }
}
