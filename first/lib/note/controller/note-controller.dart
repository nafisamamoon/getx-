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
  void done(var ischecked){
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