import 'package:buoi5/domain/models/task.dart';
import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:buoi5/utils/extension/task_priority_extension.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({required this.task, super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: AppColors.hex1F1F1F,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 15,
            height: 80,
            decoration: BoxDecoration(
              color: task.priority.color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7.5),
                bottomLeft: Radius.circular(7.5),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.hexFFFFFF,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/calenda.png",
                        width: 16,
                        height: 16,
                        color: AppColors.hexCCFFFFFF,
                      ),
                      SizedBox(width: 7),
                      Text(
                        task.date.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.hexCCFFFFFF,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              task.status.name == "completed"
                  ? "assets/images/checkbox.png"
                  : "assets/images/checkBoxFalse.png",
              width: 26,
              height: 26,
            ),
          ),
        ],
      ),
    );
  }
}
