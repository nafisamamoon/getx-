import 'package:first/model/product.dart';
import 'package:first/test/model/test-model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController{
  RxBool isPressed=false.obs;
   RxList products=[].obs;
   RxList statusList=[].obs;
  // Object? nam='first';
List sampleData=[].obs;
byStatus(){

}

 var selected = 1.obs;
var statusName='active'.obs;
   void setSelected(int? value){
     selected.value = value! ;
   }
   void setStatusSelected( value){
    isPressed.value=true;
    n.clear();
     statusName.value = value! ;
     //print(value);
     //print(products.value.map((e) => e.status));
     for (var i = 0; i < products.length; i++) {
       if(products[i].status == value){
//print('true');
n.add(products[i]);
       }
     }
    
     print(n.length);
   }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
    fetchStatus();
    
  }
List n=[];
  List productResult=[];
  void fetchProducts()async{
 productResult=[
  Myproduct(
    id: 1,
    description: 'desw',
    name: 'first',
    status: 'best'
  ),
   Myproduct(
   id: 2,
    description: 'dees',
    name: 's',
    status: 'active'
  ),
   Myproduct(
   id: 3,
    description: 'ders',
    name: 't',
    status: 'active'
  ),
  /////////////////
  Myproduct(
    id: 4,
    description: 'dtes',
    name: 'fo',
    status: 'expirt'
  ),
   Myproduct(
   id: 5,
    description: 'desy',
    name: 'fi',
    status: 'expirt'
  ),
   Myproduct(
   id: 6,
    description: 'dejs',
    name: 'si',
    status: 'expirt'
  ),
  ///////////////
  Myproduct(
    id: 7,
    description: 'dets',
    name: 'se',
    status: 'best'
  ),
   Myproduct(
   id: 8,
    description: 'dems',
    name: 'ei',
    status: 'best'
  ),
   Myproduct(
   id: 9,
    description: 'dhhes',
    name: 'ni',
    status: 'best'
  ),
];
products.value=productResult;
//  sampleData = products.map((h) => {"id": h.id, "name": h.name, "description": h.description, "status": h.status,}).toList();
  }
  /////////////////////////////////////////////////////
  List statusResult=[];
  void fetchStatus()async{
 statusResult=[
  Myproduct(
    id: 1,
    name: 'active',
   
  ),
   Myproduct(
   id: 2,
    name: 'expirt',
   
  ),
   Myproduct(
   id: 3,
    name: 'best',
    
  ),
];
statusList.value=statusResult;
//  sampleData = products.map((h) => {"id": h.id, "name": h.name, "description": h.description, "status": h.status,}).toList();
  }
}