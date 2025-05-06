import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CreateTaskTimePicker extends StatefulWidget {
  const CreateTaskTimePicker({super.key});

  @override
  State<CreateTaskTimePicker> createState() => _CreateTaskTimePickerState();
}

class _CreateTaskTimePickerState extends State<CreateTaskTimePicker> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  // Hàm để hiển thị TimePicker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime, // Thời gian ban đầu
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked; // Cập nhật thời gian nếu người dùng chọn
      });
    }
  }

  // Hàm để thêm giờ vào TimeOfDay
  // TimeOfDay addHoursToTimeOfDay(TimeOfDay time, int hoursToAdd) {
  //   final now = DateTime.now();
  //   final dateTime = DateTime(
  //     now.year,
  //     now.month,
  //     now.day,
  //     time.hour,
  //     time.minute,
  //   );

  //   final newDateTime = dateTime.add(Duration(hours: hoursToAdd));
  //   return TimeOfDay(hour: newDateTime.hour, minute: newDateTime.minute);
  // }

  // Thay đổi thời gian kết thúc bằng cách thêm 3 giờ vào thời gian bắt đầu
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21),
          child: Row(
            children: [
              Text(
                "Start Time",
                style: TextStyle(
                  color: AppColors.hexCCFFFFFF,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 75),
              Text(
                "End Time",
                style: TextStyle(
                  color: AppColors.hexCCFFFFFF,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:
                    () =>
                        _selectTime(context), // Gọi hàm chọn thời gian khi nhấn
                child: Container(
                  width: 150,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.hex181818,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: AppColors.hexBA83DE,
                          size: 24,
                        ),
                        SizedBox(width: 14),
                        Text(
                          _selectedTime.format(context),
                          style: TextStyle(
                            color: AppColors.hexCCFFFFFF,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  // Gọi hàm chọn thời gian khi nhấn
                  _selectTime(context);
                },
                child: Container(
                  width: 150,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.hex181818,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: AppColors.hexBA83DE,
                          size: 24,
                        ),
                        SizedBox(width: 14),
                        Text(
                          // addHoursToTimeOfDay(_selectedTime, 3).format(context),
                          _selectedTime.format(context),
                          style: TextStyle(
                            color: AppColors.hexCCFFFFFF,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
