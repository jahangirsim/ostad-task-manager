import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600,
            letterSpacing: 0.9,
            color: Colors.black
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark,

    primarySwatch: Colors.green,
    inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    border: OutlineInputBorder(borderSide: BorderSide.none),
    filled: true,
    fillColor: Colors.white),
    textTheme: const TextTheme(
    titleLarge: TextStyle(
    fontSize: 24, fontWeight: FontWeight.w600,
    letterSpacing: 0.9,
    color: Colors.black
    )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
    elevation: 5,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    ),
      ),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
