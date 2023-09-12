import 'package:flutter/material.dart';

class transactionScreen extends StatelessWidget {
  const transactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx,index){
      return Card(
        elevation: 3,
        child: ListTile(
          leading: Text('13 Mar'),
          title: Text('10000'),
          subtitle: Text('travel'),
        ),
      );
    },
        separatorBuilder: (ctx,index){
      return Divider(height: 5,);
        },
        itemCount: 10);
  }
}
