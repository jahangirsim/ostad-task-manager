import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/summary_card.dart';
import 'package:task_manager/ui/widgets/user_profile_bannar.dart';

import '../widgets/task_list_tile.dart';
import 'add_new_task_screen.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBannar(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      title: 'New',
                      number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Completed',
                      number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'In Progress',
                      number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Cancelled',
                      number: 123,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const TaskListTile();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 4);
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewTaskScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
    
  }
}


