import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/login_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 50
              ),
              Text(
                'Set password',
                //style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Text(
                'Maximum length of Password should be 8 character with number and letter combination',
              ),
              const SizedBox(height: 20),
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
                  labelText: 'Confirm Password',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Text('Confirm'))),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Return to',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> const LoginScreen()), (route) => false);
                      },
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
