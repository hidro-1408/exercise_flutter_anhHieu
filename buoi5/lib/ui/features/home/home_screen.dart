import 'package:buoi5/domain/models/task.dart';
import 'package:buoi5/domain/models/task_priority.dart';
import 'package:buoi5/domain/models/task_status.dart';
import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:buoi5/ui/core/ui/task_item.dart';
import 'package:buoi5/ui/features/home/widgets/home_heading.dart';
import 'package:buoi5/ui/features/home/widgets/home_daily_task.dart';
import 'package:buoi5/ui/features/home/widgets/home_header.dart';
import 'package:buoi5/ui/features/home/widgets/home_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final tasks = [
    Task(
      id: "1",
      name: "Mobile App Research",
      description: "Description 1",
      startTime: const TimeOfDay(hour: 9, minute: 0),
      endTime: const TimeOfDay(hour: 10, minute: 0),
      date: DateTime(2025, 4, 26),
      priority: TaskPriority.high,
      status: TaskStatus.completed,
      createdAt: DateTime.now(),
      updatedAt: null,
    ),

    Task(
      id: "2",
      name: "Prepare Wireframe for Main Flow",
      description: "Description 2",
      startTime: const TimeOfDay(hour: 9, minute: 0),
      endTime: const TimeOfDay(hour: 10, minute: 0),
      date: DateTime(2025, 4, 26),
      priority: TaskPriority.medium,
      status: TaskStatus.completed,
      createdAt: DateTime.now(),
      updatedAt: null,
    ),

    Task(
      id: "",
      name: "Prepare Screens",
      description: "Description 3",
      startTime: const TimeOfDay(hour: 9, minute: 0),
      endTime: const TimeOfDay(hour: 10, minute: 0),
      date: DateTime(2025, 4, 26),
      priority: TaskPriority.low,
      status: TaskStatus.incompleted,
      createdAt: DateTime.now(),
      updatedAt: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.hexDE83B0, AppColors.hexC59ADF],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
          color: AppColors.hex292D32, // icon color
          iconSize: 24,
        ),
      ),
      backgroundColor: AppColors.hex020206,
      body: Column(
        children: [
          HomeHeader(title: "You have got 5 tasks today to complete"),
          HomeSearch(),
          SizedBox(height: 19),
          HomeHeading(title: "Progress"),
          SizedBox(height: 10),
          HomeDailtTask(),
          SizedBox(height: 20),
          HomeHeading(title: "Today’s Task"),
          SizedBox(height: 10),
          TaskItem(task: tasks[0]),
          SizedBox(height: 10),
          TaskItem(task: tasks[1]),
          SizedBox(height: 10),
          TaskItem(task: tasks[2]),
        ],
      ),
    );
  }
}
