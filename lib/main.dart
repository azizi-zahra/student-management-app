import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:radiohead/theme/theme.dart';

import 'package:radiohead/screens/welcome_screen.dart';

import 'package:radiohead/widgets/assignment_provider.dart';
import 'package:radiohead/widgets/course_provider.dart';
import 'package:radiohead/widgets/task_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskProvider()),
        ChangeNotifierProvider(create: (context) => AssignmentProvider()),
        ChangeNotifierProvider(create: (context) => CourseProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radiohead',
      theme: lightMode,
      home: const WelcomeScreen(),
    );
  }
}
