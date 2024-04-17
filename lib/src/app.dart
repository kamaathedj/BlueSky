import 'package:flutter/material.dart';

class App extends StatelessWidget {
const App({ super.key });



  @override
  Widget build(BuildContext context){
    Set<String> selected = {'Inbox'};
    return Center(
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
        ], selected: selected,
        )
    );
  }
}