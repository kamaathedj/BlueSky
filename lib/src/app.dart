import 'package:flutter/material.dart';

class App extends StatelessWidget {
const App({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context){
    Set<String> _selected = {'Inbox'};
    return Container(
      child: Center(
        child:SegmentedButton(
          segments: [
            ButtonSegment<String>(
              value: 'Inbox',
              label: Text('Inbox')
              ),
            ButtonSegment<String>(
              value: 'Primary',
              label: Text('Primary')
              ),
            ButtonSegment<String>(
              value: 'Something else',
              label: Text('Something else')
              )
          ], selected: _selected,
          )
      ),
    );
  }
}