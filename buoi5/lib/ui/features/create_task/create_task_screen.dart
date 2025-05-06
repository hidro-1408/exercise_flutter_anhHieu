import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:buoi5/ui/features/create_task/widgets/create_task_appbar.dart';
import 'package:buoi5/ui/features/create_task/widgets/create_task_schedule.dart';
import 'package:buoi5/ui/features/create_task/widgets/create_task_time_picker.dart';
import 'package:buoi5/ui/features/create_task/widgets/create_today_picker.dart';
import 'package:buoi5/ui/features/create_task/widgets/create_weekpicker.dart';
import 'package:flutter/material.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Đóng bàn phím khi nhấn ra ngoài
      },
      child: Scaffold(
        backgroundColor: AppColors.hex020206,
        appBar: CreateTaskAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CreateWeekPicker(),
              CreateTodayPicker(),
              SizedBox(height: 27),
              CreateTaskSchedule(),
              SizedBox(height: 20),
              CreateTaskTimePicker(),
            ],
          ),
        ),
      ),
    );
  }
}
