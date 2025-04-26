import 'package:buoi5/domain/models/task_priority.dart';
import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

extension TaskPriorityExtension on TaskPriority {
  Color get color {
    switch (this) {
      case TaskPriority.high:
        return AppColors.hexFACBBA;
      case TaskPriority.medium:
        return AppColors.hexD7F0FF;
      case TaskPriority.low:
        return AppColors.hexFAD9FF;
    }
  }

  String get name {
    switch (this) {
      case TaskPriority.high:
        return "High";
      case TaskPriority.medium:
        return "Medium";
      case TaskPriority.low:
        return "Low";
    }
  }
}
