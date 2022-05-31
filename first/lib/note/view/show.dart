import 'package:first/note/controller/note-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Show extends StatelessWidget {
  //const Show({Key? key}) : super(key: key);
NoteController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accomplished tasks'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: controller.doneNotes.length,
          itemBuilder: (context,i){
            return Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 190,
                  height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.green
              ),
              child: ListTile(
               title: Text('${controller.doneNotes[i].title}',style: TextStyle(wordSpacing: 2,fontWeight: FontWeight.bold),),
               subtitle: Text('${controller.doneNotes[i].content}'),
              ),
            ),
            SizedBox(height: 19,)
              ],
            );
          }
          ),
      ),
    );
  }
}