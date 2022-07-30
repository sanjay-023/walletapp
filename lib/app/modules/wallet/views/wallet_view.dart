import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walletapp/app/modules/wallet/views/widget/bottom_sheet_widget.dart';
import 'package:walletapp/app/modules/wallet/views/widget/dot_indicator_widget.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  final walletController = Get.put(WalletController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 229, 229),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 38.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Wallets",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 34.sp)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: 191.h,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return walletController.cardList[index];
                      },
                      itemCount: walletController.cardList.length,
                      controller: walletController.pageController,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: walletController.changePageIndex,
                    ),
                  ),
                  GetBuilder<WalletController>(builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0;
                              i < walletController.cardList.length;
                              i++)
                            if (walletController.currentCard == i)
                              DotIndicator(isActive: true)
                            else
                              DotIndicator(isActive: false)
                        ],
                      ),
                    );
                  }),
                ],
              ),
              TransactionSheet()
            ],
          ),
        )));
  }
}
