import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  DotIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 8.h,
        width: isActive ? 12.w : 8.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: isActive ? Color.fromARGB(255, 55, 55, 55) : Colors.grey),
      ),
    );
  }
}
