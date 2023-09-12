import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymanagingapp/screens/home/hopmescreen.dart';

void main(){
  runApp(Moneyapp());
}
class Moneyapp extends StatelessWidget {
  const Moneyapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}

