import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/summary_card.dart';
import 'package:task_manager/ui/widgets/task_list_tile.dart';
import 'package:task_manager/ui/widgets/user_profile_bannar.dart';

class CompletedTaskScreen extends StatelessWidget {
  const CompletedTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBannar(),
            const Row(
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
    );
  }
}
