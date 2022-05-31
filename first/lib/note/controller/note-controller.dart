

import 'package:first/note/model/note-model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NoteController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit(); 
    fetchnotes();  
  }
  List noteResult=[].obs;
  RxList notes=[].obs;
  RxList doneNotes=[].obs;
  RxList dis=[].obs;
  //for checkbox
 /* void done(var ischecked){
    //doneNotes.clear();
if(ischecked.status == true){
  doneNotes.add(ischecked);
  Get.snackbar(
    'congratulations', 
    'you are the best!!',
    icon: Icon(Icons.check)
    );
}else if(ischecked.status == false){
   doneNotes.remove(ischecked);
}
print(doneNotes.length);
  }*/
  var choice='done'.obs;
void dismiss(var d){
  notes.value.remove(d);
dis.add(d);

}
void doneList(val){
if(val == 'done'){
  Get.defaultDialog(
    title: 'Accomplished tasks',
  content:Container(
    height: 200,
    child: ListView.builder(
    itemCount: dis.length,
    itemBuilder: (context,i){
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              width: double.infinity,
              //height: 200,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(9),
               color: Colors.orangeAccent
             ),
        child: Text('${dis[i].title}')
        
            ),
          ),
        ],
      );
    }
    ),
  )
  );
}else if(val =='undone'){
  Get.defaultDialog(
   
    title: ' not Accomplished tasks',
  content:Container(
    
    height: 200,
    child: ListView.builder(
    itemCount: notes.length,
    itemBuilder: (context,i){
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              width: double.infinity,
              //height: 200,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(9),
               color: Colors.orangeAccent
             ),
        child: Text('${notes[i].title}')
        
            ),
          ),
        ],
      );
    }
    ),
  )
  );
}
}
  void fetchnotes()async{
 noteResult=[
  Note(
    id: 1,
    title: 'study',
    content: 'first',
    status: false
  ),
  Note(
    id: 2,
    title: 'football',
    content: 'first',
    status: false
  ),
   Note(
    id: 3,
    title: 'watch tv',
    content: 'first',
    status: false
  ),
   Note(
    id: 4,
    title: 'fourth',
    content: 'first',
    status: false
  ),
];
notes.value=noteResult;
  }
}