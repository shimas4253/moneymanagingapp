import 'package:flutter/material.dart';
import 'package:moneymanagingapp/screens/category/screen_category.dart';
import 'package:moneymanagingapp/screens/home/widgets/bottom_navigation.dart';
import 'package:moneymanagingapp/screens/transaction/screen_transaction.dart';

class homeScreen extends StatelessWidget {
  homeScreen({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final pages = [const transactionScreen(), categoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(child: Text('MONEY MANAGER')),
      ),
      bottomNavigationBar: bottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(selectedIndexNotifier.value==0){
            print('add transaction');
          }else{
            print('add category');
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
