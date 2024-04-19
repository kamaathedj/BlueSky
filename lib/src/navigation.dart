import 'dart:ffi';

import 'package:flutter/material.dart';

class myFloatingActionButton extends StatefulWidget {
  const myFloatingActionButton({super.key});

  @override
  State<myFloatingActionButton> createState() => _myFloatingActionButtonState();
}

class _myFloatingActionButtonState extends State<myFloatingActionButton> {

  Set<String> selected = {'Primary'};
void selectionChanged(Set<String> choice){
  setState(() {
    selected = choice;
  });
}

  @override
  Widget build(BuildContext context) {
    
    
    return Center(
      heightFactor: 1,
      child: FloatingActionButton.extended(
        hoverElevation: 0,
        highlightElevation: 0,
        enableFeedback: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        onPressed: () {  },
        label: SegmentedButton(
          onSelectionChanged: (choices) => selectionChanged(choices),
          segments: [
            ButtonSegment<String>(
              value: 'Create',
              label: Icon(Icons.edit)
              ),
            ButtonSegment<String>(
              value: 'Primary',
              icon: Icon(Icons.access_alarm)
              ),
            ButtonSegment<String>(
              value: 'Something else',
              label: Icon(Icons.account_balance_wallet_sharp)
              )
          ], selected: selected,
          ),
      ),
    );
  }
}