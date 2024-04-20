import 'package:blue_sky/src/Home.dart';
import 'package:blue_sky/src/pages/CreateTask.dart';
import 'package:blue_sky/src/pages/SettingPage.dart';
import 'package:blue_sky/src/state/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class myFloatingActionButton extends ConsumerWidget {

   myFloatingActionButton({super.key});


   Set<String> selected = {'Home'};
  //something is happening here and i dont like it at all
void selectionChanged(Set<String> choice,BuildContext context, WidgetRef ref){
  var watch = ref.watch(NavigationChangeNotifier.notifier);
  selected = choice;
    switch (selected.first) {
      case 'Home':
        print('home');
        watch.changePage('Home');
        Navigator.pushNamed(context, '/');

      case 'Create':
        watch.changePage('Create');
        Navigator.of(context).pushNamed('/create');
          print('create page');    
      case 'Setting':
        watch.changePage('Setting');
        Navigator.pushNamed(context,'/setting');
        print('setting');
      default:
    }
     
}

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var readSelected = ref.read(NavigationChangeNotifier.notifier).page_value;
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
          onSelectionChanged: (choices) => selectionChanged(choices,context,ref),
          segments: [
            ButtonSegment<String>(
              value: 'Home',
              label: Icon(Icons.home)
              ),
            ButtonSegment<String>(
              value: 'Create',
              icon: Icon(Icons.edit)
              ),
            ButtonSegment<String>(
              value: 'Setting',
              label: Icon(Icons.settings)
              )
          ], selected: {readSelected},
          ),
      ),
    );
  }
}