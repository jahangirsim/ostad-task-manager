import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/bottom_nav_base_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                'Join With Us',
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
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomNavBaseScreen()), (route) => false);
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Text('Join'))),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'I have an account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ))),
    );
  }
}
