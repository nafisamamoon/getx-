import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var books=0.obs;
  var pens=0.obs;
  int get sum=>books.value + pens.value;
  increment(){
    books.value++;
  }
  decrement(){
  if(books.value<=0){
    Get.snackbar("Buying book", 'cannot be less than zero',icon: Icon(Icons.alarm),barBlur: 20,isDismissible: true,duration: Duration(seconds: 4));
 }else{
    books.value--;
 }
  }
   incrementpen(){
    pens.value++;
  }
  decrementpen(){
  if(pens.value<=0){
    Get.snackbar("Buying book", 'cannot be less than zero',icon: Icon(Icons.alarm),barBlur: 20,isDismissible: true,duration: Duration(seconds: 4));
 }else{
    pens.value--;
  }
  }
}