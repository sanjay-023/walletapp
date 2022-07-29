import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:walletapp/app/modules/wallet/views/widget/credit_card_widget.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(
            height: 38.h,
          ),
          Row(
            children: [
              Text(
                "Wallets",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 34.sp),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CreditCardWidget(),
                SizedBox(
                  width: 14.w,
                ),
                CreditCardWidget()
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
