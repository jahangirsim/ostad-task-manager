import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/user_profile_bannar.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserProfileBannar(),
                  const SizedBox(height: 50),
                  const Text('Add New Task', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    maxLines: 6,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      labelText: 'Description',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(child: ElevatedButton(onPressed: (){}, child: const Text('Add')))
                ],
              ),
            ),
          )),
    );
  }
}

