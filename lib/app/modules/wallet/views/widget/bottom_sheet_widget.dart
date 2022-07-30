import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionSheet extends StatelessWidget {
  const TransactionSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.4,
        maxChildSize: 0.5,
        builder: ((context, scrollController) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.r),
                    topRight: Radius.circular(36.r)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(10, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 5)
                ]),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                controller: scrollController,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 7.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 198, 197, 197),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transaction",
                                style: GoogleFonts.mulish(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.sp)),
                              ),
                              FaIcon(
                                FontAwesomeIcons.filter,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today",
                                style: GoogleFonts.mulish(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey)),
                              ),
                              Text("-260.99 s\$",
                                  style: GoogleFonts.mulish(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey)))
                            ],
                          ),
                        ),
                        ListTile(
                            leading: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 215, 215, 215),
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Image(
                                  image: AssetImage("asset/images/logo_1.png")),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Grab Taxi",
                                  style: GoogleFonts.mulish(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Text(
                                  "10.90 s\$",
                                  style: GoogleFonts.mulish(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                )
                              ],
                            ),
                            subtitle: Text("Sales Team")),
                        ListTile(
                          leading: Container(
                              height: 40.h,
                              width: 40.w,
                              child: Image(
                                  image: AssetImage("asset/images/logo_2.png")),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 215, 215, 215),
                                  borderRadius: BorderRadius.circular(12.r))),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Singapore Airlines",
                                  style: GoogleFonts.mulish(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                              Text("250.09 s\$",
                                  style: GoogleFonts.mulish(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),
                          subtitle: Text("Business Travel"),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
          );
        }));
  }
}
