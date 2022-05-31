
import 'package:first/first/views/mycart.dart';
import 'package:first/note/view/my-home.dart';
import 'package:first/test/view/home.dart';
import 'package:first/view/shopping-page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     //home: ShoppingPage(),
     //home: MyCart(),
     //this is for change content of page based on selection from dropdown menu
     //home: Home(),
     //for todo-list with checkbox and getx
     home: MyHome(),
    );
  }
}




