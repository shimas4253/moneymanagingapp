import 'package:flutter/material.dart';
import 'package:moneymanagingapp/screens/category/expense_category_list.dart';
import 'package:moneymanagingapp/screens/category/income_category_list.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({Key? key}) : super(key: key);

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen>with SingleTickerProviderStateMixin{
  
  late TabController _tabController;
  @override
  void initState() {
   _tabController=TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
            controller: _tabController,
            tabs: [
          Tab(text: 'INCOME',),
          Tab(text: 'EXPENSE',)
        ],
        ),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: [
                incomeCatList(),
              expensCatList()
              ]),
        )
      ],
    );
  }
}
