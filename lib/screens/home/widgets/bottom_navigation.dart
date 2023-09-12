import 'package:flutter/material.dart';
import 'package:moneymanagingapp/screens/home/hopmescreen.dart';

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: homeScreen.selectedIndexNotifier,
      builder: (BuildContext cntx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              homeScreen.selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'transactions'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
            ]);
      },
    );
  }
}
