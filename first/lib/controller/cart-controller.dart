import 'package:first/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  RxList cartItems=[].obs;
  //var totalPrice=cartItems.fold(0,(sum,item)=>sum! + item.price);
  addToCart(Product product){
    cartItems.add(product);
  }
}