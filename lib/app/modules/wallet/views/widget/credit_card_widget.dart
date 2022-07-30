import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardWidget extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;
  CreditCardWidget({Key? key, required this.colorOne, required this.colorTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 191.h,
        width: 319.w,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(157, 0, 0, 0),
                  blurRadius: 3,
                  spreadRadius: 0.5,
                  offset: Offset.zero)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [colorOne, colorTwo]),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sales Team",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ))),
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
              ),
              // SizedBox(
              //   height: 4.h,
              // ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text('S\$2617.14',
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700))),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 8.h,
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "****",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.sp,
                          letterSpacing: 4),
                    ),
                    Text("****",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                            letterSpacing: 4)),
                    Text("****",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                            letterSpacing: 4)),
                    Text("4472",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18.sp,
                            fontFamily: "OCR A Extended"))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 6.h,
              // ),
              Expanded(
                child: Row(
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
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "VIRTUAL",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "OCR A Extended"),
                    ),
                    Text(
                      "12/22",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "OCR A Extended"),
                    )
                  ],
                ),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
