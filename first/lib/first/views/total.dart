import 'package:first/first/controllers/my-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TotAL extends StatelessWidget {
 // const TotAL({Key? key}) : super(key: key);
final MyController c=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=>Text('${c.sum}'),),
              
               ElevatedButton(onPressed: (){
                    Get.back();
                  },child: Text('back'),),
            ],
          ),
        ),
      ),
    );
  }
}