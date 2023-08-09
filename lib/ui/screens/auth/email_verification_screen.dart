import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/opt_verification_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your Email Address', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 20),
                  Text('A six digit verification text will send to your email address',
                  style: Theme.of(context).textTheme.bodyMedium,),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address'
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> const OptVerificationScreen()));
                      }, child: const Icon(Icons.navigate_next))),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'SignIn',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
