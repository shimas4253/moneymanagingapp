import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:moneymanagingapp/model/category/category_model.dart';
import 'package:moneymanagingapp/screens/home/hopmescreen.dart';

 main()async{
   WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
   if(Hive.isAdapterRegistered(CategoryModelAdapter().typeId)){
     Hive.registerAdapter(CategoryModelAdapter());
   }
   if(Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)){
     Hive.registerAdapter(CategoryTypeAdapter());
   }
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

