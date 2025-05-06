import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CreateTaskSchedule extends StatefulWidget {
  const CreateTaskSchedule({super.key});

  @override
  State<CreateTaskSchedule> createState() => _CreateTaskScheduleState();
}

class _CreateTaskScheduleState extends State<CreateTaskSchedule> {
  late FocusNode _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Schedule",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 18),
          TextFormField(
            style: TextStyle(
              color: AppColors.hexFFFFFF,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: "Name",
              hintStyle: TextStyle(
                color: AppColors.hexCCFFFFFF,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              fillColor: AppColors.hex181818,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            autofocus: false,
            maxLines: 4,
            controller: _controller,
            focusNode: _focusNode,
            style: TextStyle(
              color: AppColors.hexFFFFFF,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: "Description",
              hintStyle: TextStyle(
                color: AppColors.hexCCFFFFFF,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              fillColor: AppColors.hex181818,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
