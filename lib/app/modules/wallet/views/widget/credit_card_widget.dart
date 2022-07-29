import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 191.h,
      width: 319.w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 66, 164, 217),
                Color.fromARGB(255, 26, 93, 217)
              ]),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales Team",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(80, 255, 255, 255),
                      borderRadius: BorderRadius.circular(7.r)),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text('S\$2617.14',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "****",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 20.sp, letterSpacing: 4),
                ),
                Text("****",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 20.sp, letterSpacing: 4)),
                Text("****",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 20.sp, letterSpacing: 4)),
                Text("4472",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18.sp))
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CARD TYPE",
                  style: TextStyle(color: Colors.white, fontSize: 9.sp),
                ),
                Text(
                  "VALID THRU",
                  style: TextStyle(color: Colors.white, fontSize: 9.sp),
                )
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "VIRTUAL",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  "12/22",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
