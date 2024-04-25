import 'package:blue_sky/src/navigation.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/widgets.dart';

class CreateTask extends StatelessWidget {
   CreateTask({super.key});

DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(Icons.check),),
          )
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
                          onChanged: (DateTime? value) => print(value.toString()),
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