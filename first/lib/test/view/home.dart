
import 'package:first/test/controller/test-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
TestController controller=Get.put(TestController());String selectedStatus='first';
  @override
  Widget build(BuildContext context) {
    //Object? nam='first';
//final sampleData = controller.products.map((h) => {"id": h.id, "name": h.name, "description": h.description, "status": h.status,}).toList();
//print(sampleData);

    return Scaffold(
     body:  GetX<TestController>(
       builder: (controller){
         return Container(
       child: SingleChildScrollView(
         child: Column(
           children: [
            DropdownButton(
      onChanged: (newValue ){
controller.setStatusSelected(newValue as String);
      },
      value: controller.statusName.value,
      hint: Text("Status"),
      items: controller.statusList.map((item){
        return DropdownMenuItem<String>(child: Text("${item.name!}"),
        value: item.name!,
        );
      }).toList(),
      ),
      controller.isPressed.value ?
               Container(
                height: 900,
                child: 
                    ListView.builder(
                      
             itemCount: controller.n.length,
             itemBuilder: (context,i){
          return Card(
            child: ListTile(
            title:Text('${controller.n[i].name}') ,
            subtitle: Text('${controller.n[i].description}') ,
            trailing: Text('${controller.n[i].status}') ,
          ) ,
          );
             }
             )
                  
                  
              )
               :
              Container(
                height: 900,
                child: 
                    ListView.builder(
                      
             itemCount: controller.products.length,
             itemBuilder: (context,i){
          return Card(
            child: ListTile(
            title:Text('${controller.products[i].name}') ,
            subtitle: Text('${controller.products[i].description}') ,
            trailing: Text('${controller.products[i].status}') ,
          ) ,
          );
             }
             )
                  
                  
              )
            
           ],
         ),
       )
       );
       }
       )
    );
  }
}

/*
DropdownButton(
      onChanged: (newValue ){
controller.setSelected(newValue as int);
      },
      value: controller.selected.value,
      hint: Text("Status"),
      items: controller.products.map((item){
        return DropdownMenuItem<int>(child: Text("${item.status!}"),
        value: item.status!,
        );
      }).toList(),
      ),
*/
