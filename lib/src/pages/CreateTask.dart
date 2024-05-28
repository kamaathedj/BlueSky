import 'package:blue_sky/src/models/TaskModel.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

// ignore: must_be_immutable
class CreateTask extends StatelessWidget {
   CreateTask({super.key});

DateTime? selectedDate;

late final TextEditingController titleTextFieldController;

late final TextEditingController descriptionTextFieldController;

DateTime? startDate;

DateTime? endDate;

DateTime? timeline ;

Choice? workspace;

String? newValue = 'personal';
void onSavingTask(){

  var title = titleTextFieldController.text;
  var description = descriptionTextFieldController.text;

}

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isEnabled = ValueNotifier(false);
    late final TextEditingController titleTextFieldController;
    late final TextEditingController descriptionTextFieldController;

    titleTextFieldController = TextEditingController()
      ..addListener(() { 
        if(descriptionTextFieldController.text.isNotEmpty && titleTextFieldController.text.isNotEmpty){
          isEnabled.value = true; 
        }else{
          isEnabled.value = false;
        }
      });

    descriptionTextFieldController = TextEditingController()
      ..addListener(() { 
        if(titleTextFieldController.text.isNotEmpty && descriptionTextFieldController.text.isNotEmpty){
          isEnabled.value = true;
        }else{
          isEnabled.value = false; 
        }
      });


    return Scaffold(
      appBar: AppBar(
        title: Text("New Task"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: CircleAvatar(child: Icon(Icons.arrow_back),),
            onTap: () => Navigator.pop(context),
            ),
        ),
        actions: [
          ValueListenableBuilder<bool>(
            valueListenable: isEnabled, 
            builder: (context,value,child){
              return GestureDetector(
                onTap: value? () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Task saved')
                )) :null,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(child: Icon(Icons.check),),
               ),
              );
            })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("Title",style: TextStyle(fontSize: 17),),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: titleTextFieldController,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30,))
                ),
                hintText: 'Blue sky project',
              ),
            ),
          ),
          //description
          Text("Description",style: TextStyle(fontSize: 17),),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: descriptionTextFieldController,
              maxLines: 5,
              minLines: 5,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30,))
                ),
                hintText: 'Blue sky project is a personal project geared toward project management and time planning for these projects',
              ),
            ),
          ),
      
          //Date input widgets
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Start date",style: TextStyle(fontSize: 17),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: DateTimeFormField(
                        onSaved: (value)=>{
                          startDate = value
                        },
                        mode: DateTimeFieldPickerMode.date,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(30) ),
                            labelText: '4,june',
                          ),
                          firstDate: DateTime.now().add(Duration(days: 10)),
                          lastDate: DateTime.now().add(Duration(days: 40)),
                          initialPickerDateTime: DateTime.now().add( Duration(days: 20)),
                          onChanged: (DateTime? value) => print(value.toString()),
                        ),
                    ),
                  ),
                ],
              ),
               //end date
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("End Date",style: TextStyle(fontSize: 17),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: DateTimeFormField(
                        mode: DateTimeFieldPickerMode.date,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            labelText: '5,june',
                          ),
                          firstDate: DateTime.now().add(Duration(days: 10)),
                          lastDate: DateTime.now().add(Duration(days: 40)),
                          initialPickerDateTime: DateTime.now().add( Duration(days: 20)),
                          onSaved: (DateTime? value) {
                            endDate = value;
                          }, onChanged: (DateTime? value) { print(value); },
                        ),
                    ),
                  ),
            ],
          )
            ],
            
          ),
      
          // Time picker
          Text("Daily Timeline",style: TextStyle(fontSize: 17),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                      width: 300,
                      child: DateTimeFormField(
                        mode: DateTimeFieldPickerMode.time,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            labelText: '10:00',
                          ),
                          firstDate: DateTime.now().add(Duration(days: 10)),
                          lastDate: DateTime.now().add(Duration(days: 40)),
                          initialPickerDateTime: DateTime.now().add( Duration(days: 20)),
                          onChanged: (DateTime? value) => print(value.toString()),
                        ),
                    ),
          ),
           //Workspace choice
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Workspace",style: TextStyle(fontSize: 17),),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(30),
                    items:[
                      DropdownMenuItem(child: Text('Personal')),
                    ], 
                    onChanged: ((value) => print(value.toString())
                    ),
                  ),
                ),
              ),
            ),
           
          ],
        ),
      ),
     // floatingActionButton: myFloatingActionButton(),
    );
    
  }
}