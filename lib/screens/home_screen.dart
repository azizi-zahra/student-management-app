import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:radiohead/widgets/summary_item.dart';
import 'package:radiohead/widgets/task_item.dart';
import 'package:radiohead/widgets/navigation_bar.dart';
import 'package:radiohead/widgets/task_provider.dart';

import 'package:radiohead/screens/tasks_screen.dart';
import 'package:radiohead/screens/user_info_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeContent(),
    const TasksContent(),
    const Text('Classes Page'),
    const Text('News Page'),
    const Text('Assignments Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen())
      );
    }

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TasksScreen())
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        toolbarHeight: 70,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 40.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserInfoScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/purple-pattern.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          _widgetOptions[_selectedIndex],
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  HomeContentState createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return ListView(
            children: [
              const Text(
                'Summary',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SummaryItem(icon: Icons.star, text: 'Best score: 20.0'),
                  SummaryItem(icon: Icons.article, text: 'Exams: 3'),
                  SummaryItem(icon: Icons.timer, text: 'Homeworks: 2'),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SummaryItem(icon: Icons.pending_actions, text: 'Past deadlines: 3'),
                  SummaryItem(icon: Icons.sentiment_very_dissatisfied, text: 'Worst mark: 10.0'),
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                'Current tasks',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 12),
              Column(
                children: taskProvider.currentTasks
                    .map((task) => TaskItem(
                  taskName: task.name,
                  initialCompleted: task.completed,
                  onToggleCompletion: () => taskProvider.toggleTaskCompletion(task),
                ))
                    .toList(),
              ),
              const SizedBox(height: 12),
              const Text(
                'Done tasks',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 12),
              Column(
                children: taskProvider.doneTasks
                    .map((task) => TaskItem(
                  taskName: task.name,
                  initialCompleted: task.completed,
                  onToggleCompletion: () => taskProvider.toggleTaskCompletion(task),
                ))
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Task {
  String name;
  bool completed;

  Task({required this.name, this.completed = false});
}


