import 'package:first/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShoppingController extends GetxController{
  RxList products=[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }
  void fetchProducts()async{
await Future.delayed(Duration(seconds: 1));
var serverResponse=[];
var productResult=[
  Product(
    id: 1,
    price: 30,
    productDescription: 'des',
    productImage: 'image',
    productName: 'first'
  ),
   Product(
    id: 2,
    price: 50,
    productDescription: 'des',
    productImage: 'image',
    productName: 'second'
  ),
   Product(
    id: 3,
    price: 60,
    productDescription: 'des',
    productImage: 'image',
    productName: 'third'
  ),
];
products.value=productResult;
  }
}