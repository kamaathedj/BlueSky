import 'package:blue_sky/src/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ super.key });

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Good morning',style: TextStyle(fontSize: 14),),
            Text("David kamau", style: TextStyle(fontWeight: FontWeight.w300),)
          ],
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(child: Text("D"),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(Icons.alarm),),
          )
        ],

      ),
      body: ListView(
        shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                hintText: "Search for tasks",
                
              ),
            
            ),
            //timeline
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                              children: [
                                Text("Your Timeline",style: TextStyle(fontSize: 17),),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(100.0,0,0,0),
                                  child: DropdownButton(
                                    items: [
                                      DropdownMenuItem(child: Text('January')),
                                      
        
                                    ], 
                                    onChanged: (s)=>print('nana')),
                                ),  
        
                            ],
                            ),
              ),
              //date cards
                DateCards(),
              //two cards
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Card.filled(
                  child: SizedBox.square(
                    dimension:170, 
                    child: ListTile(
                      title: Text("Official workspace"),
                    ),      
                  ),
                ),
                Card.filled(
                  child: SizedBox.fromSize(
                    size: Size(170, 250),
                    child: RadioListTile(
                      title: Text("Personal workspace"),
                      subtitle:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Blue sky project"),
                      ), 
                      onChanged: (bool? value) {  }, 
                      value: false, groupValue: false ,
                    ),       
                  ),
                ),
              ],
            ),
            //Todays tasks
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Today Tasks" ,style: TextStyle(fontSize: 24),),
                Text("see more...")
              ],
            ),
            Card.filled(
              child: SizedBox.fromSize(
                size: Size(300,60),
                child: ListTile(
                  title: Text("C++ projects"),
                  subtitle: Text("Add pointers to the final .dll file"),
                  ),
              ),
            ),
                        Card.filled(
              child: SizedBox.fromSize(
                size: Size(300,60),
                child: ListTile(
                  title: Text("Flutter projects"),
                  subtitle: Text("New app project"),
                  ),
              ),
            ),
                        Card.filled(
              child: SizedBox.fromSize(
                size: Size(300,90),
                child: ListTile(
                  title: Text("Java projects"),
                  subtitle: Text("Spring boot starter project"),
                  ),
              ),
            ),
        
          ],
        ),
      floatingActionButton: myFloatingActionButton(),
    );
  }
}

class DateCards extends StatelessWidget {
  const DateCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card.filled(
          color: Color.fromARGB(255, 189, 72, 4),
          child: SizedBox.square(
          dimension: 50,child: Column(
            children: [
              Text('4'),
              Text("Mon")
              ],
              ),
              )
              ),
              Card.filled(child: SizedBox.square(
          dimension: 50,child: Column(
            children: [
              Text('5'),
              Text("Tue")
              ],
              ),
              )
              ),
              Card.filled(child: SizedBox.square(
          dimension: 50,child: Column(
            children: [
              Text('6'),
              Text("Wed")
              ],
              ),
              )
              ),
              Card.filled(child: SizedBox.square(
          dimension: 50,child: Column(
            children: [
              Text('7'),
              Text("Thur")
              ],
              ),
              )
              ),
              Card.filled(child: SizedBox.square(
          dimension: 50,child: Column(
            children: [
              Text('8'),
              Text("Fri")
              ],
              ),
              )
              ),
    
      ],
    );
  }
}