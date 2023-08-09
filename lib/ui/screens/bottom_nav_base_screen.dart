import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/cancelled_task_screen.dart';
import 'package:task_manager/ui/screens/completed_task_screen.dart';
import 'package:task_manager/ui/screens/in_progress_task_screen.dart';
import 'package:task_manager/ui/screens/new_tesk_screen.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {

  int _selectedScreenIndex = 0;

  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    InProgressTaskScreen(),
    CancelledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: (int index){
          _selectedScreenIndex = index;
          if(mounted){
            setState(() {});
          }
        },
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.incomplete_circle), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_sharp), label: 'Cancelled'),

        ],
      ),
    );
  }
}
