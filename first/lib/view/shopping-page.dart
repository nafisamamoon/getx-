import 'package:first/controller/cart-controller.dart';
import 'package:first/controller/shopping-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShoppingPage extends StatelessWidget {
  //const ShoppingPage({Key? key}) : super(key: key);
final shoppingController=Get.put(ShoppingController(),permanent: true);
final cartController=Get.put(CartController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
      children: [
        Expanded(
          child: GetX<ShoppingController>(
            builder: (controller){
return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context,i){
            return Card(
              child: ListTile(
                title: Text('${controller.products[i].productName}'),
                trailing:TextButton(onPressed: (){
cartController.addToCart(controller.products[i]);
                }, child: const Text('add to card')) ,
                subtitle: Text('${controller.products[i].price}'),
              ),
            );
                  }
                  );
            },
            
          ),
        ),
        GetX<CartController>(
          builder: (controller){
            return Text('Total amout:${controller.cartItems.length}');
          }
          ),
        const SizedBox(height: 100,)
      ],
        ),
      ),
    );
  }
}