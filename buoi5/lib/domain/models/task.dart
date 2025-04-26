import 'package:buoi5/domain/models/task_priority.dart';
import 'package:buoi5/domain/models/task_status.dart';
import 'package:flutter/material.dart';

class Task {
  final String? id;

  final String name;

  final String description;

  final TimeOfDay startTime;

  final TimeOfDay endTime;

  final DateTime date;

  final TaskPriority priority;

  final TaskStatus status;

  final DateTime createdAt;

  final DateTime? updatedAt;

  Task({
    this.id,
    required this.name,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.priority,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
}
