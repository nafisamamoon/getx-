import 'package:first/note/controller/note-controller.dart';
import 'package:first/note/view/show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyHome extends StatelessWidget {
  //const MyHome({Key? key}) : super(key: key);
NoteController controller=Get.put(NoteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('To-do list'),
      ),
      body:  GetBuilder<NoteController>(
      builder: (controller){
return Container(
  child: ListView.builder(
    itemCount: controller.notes.length,
    itemBuilder: (context,i){
      return Card(
        elevation: 17,
        child: CheckboxListTile(
          activeColor: Colors.amber,
          title: Text('${controller.notes[i].title}'),
          subtitle:Text('${controller.notes[i].content}') ,
          value: controller.notes[i].status, 
          onChanged: (value){
      controller.notes[i].status=value;
      controller.update();
      //print(controller.notes[i].title);
      controller.done(controller.notes[i]);
      
          }
          ),
      );
    }
    ),
);
      }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
Get.to(()=>Show());
        },
        child: Icon(Icons.dashboard),
        backgroundColor: Colors.amber,
      )
    );
  }
}