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
        actions: [
         
              DropdownButton(
                items:['done','undone'].map((e){
                return  DropdownMenuItem<String>(child: Text("$e"),value: e,);
                
                }).toList(),
               // value:controller.choice.value ,
               hint: Text(' All Todos'),
                onChanged: (val){
controller.doneList(val);
                },
              )
            
          
            
        ],
      ),
      body: GetBuilder<NoteController>(
      builder: (controller){
return Container(
  child: ListView.builder(
    itemCount: controller.notes.length,
    itemBuilder: (context,i){
      //var n=controller.notes[i];
      return Dismissible(
        onDismissed:(direction){
           controller.update();
           controller.dismiss(controller.notes[i]);
          controller.update();
         
        } ,
        key: ObjectKey(controller.notes[i]), 
        child: Card(
          elevation: 9,
          child: ListTile(
            title: Text('${controller.notes[i].title}'),
            subtitle:  Text('${controller.notes[i].content}'),
          ),
        )
        );
    }
    ),
);
      }
      ),
    );
  }
}
//with checkbox
/*
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
*/