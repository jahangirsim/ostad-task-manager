import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Update Profile',
                //style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 20),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Old Password',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Text('Update Profile'))),
              const SizedBox(height: 10),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Return to Home',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ))),
    );
  }
}
