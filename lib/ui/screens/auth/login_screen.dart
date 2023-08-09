import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/email_verification_screen.dart';
import 'package:task_manager/ui/screens/auth/sign_up_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                'Get Started With',
                //style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                  labelText: 'User ID',
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

                      },
                      child: const Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Icon(Icons.forward_outlined))),
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const EmailVerificationScreen(),
                          ));
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                      },
                      child: const Text(
                        'SignUp',
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
