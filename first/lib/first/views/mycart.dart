import 'package:first/first/controllers/my-controller.dart';
import 'package:first/first/views/total.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyCart extends StatelessWidget {
 // const MyCart({Key? key}) : super(key: key);
final MyController c=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('books',style: TextStyle(fontSize: 30,color: Colors.amber),),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
color: Colors.redAccent
                  ),
                  child: IconButton(icon:Icon(Icons.add),color: Colors.white,
                  onPressed: (){
                    c.increment();
                  },
                  ),
                ),
                SizedBox(width: 20,),
Obx(()=>Text('${c.books}',style: TextStyle(fontSize: 30),),),
                 SizedBox(width: 40,),
                 Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
color: Colors.redAccent
                  ),
                  child: IconButton(icon:Icon(Icons.remove),color: Colors.white,
                  onPressed: (){
                    c.decrement();
                  },
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
             Row(
              children: [
                Text('pens',style: TextStyle(fontSize: 30,color: Colors.amber),),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
color: Colors.redAccent
                  ),
                  child: IconButton(icon:Icon(Icons.add),color: Colors.white,
                  onPressed: (){
                    c.incrementpen();
                  },
                  ),
                ),
                SizedBox(width: 20,),
Obx(()=>Text('${c.pens}',style: TextStyle(fontSize: 30),),),
                 SizedBox(width: 40,),
                 Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
color: Colors.redAccent
                  ),
                  child: IconButton(icon:Icon(Icons.remove),color: Colors.white,
                  onPressed: (){
                    c.decrementpen();
                  },
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.indigo
                  ),
                  child: TextButton(onPressed: (){
                    Get.to(TotAL());
                  },child: Text('total'),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}