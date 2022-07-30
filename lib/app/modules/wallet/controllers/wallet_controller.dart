import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:walletapp/app/modules/wallet/views/widget/colors.dart';
import 'package:walletapp/app/modules/wallet/views/widget/credit_card_widget.dart';

class WalletController extends GetxController {
  // //TODO: Implement WalletController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // void increment() => count.value++;

  List cardList = [
    CreditCardWidget(
        colorOne: CustomColor.cardoneColorone,
        colorTwo: CustomColor.cardoneColorTwo),
    CreditCardWidget(
        colorOne: CustomColor.cardTwoColorOne,
        colorTwo: CustomColor.cardTwoColorTwo)
  ];
  int currentCard = 0;
  final PageController pageController = PageController(initialPage: 0);

  changePageIndex(newIndex) {
    currentCard = newIndex;
    update();
  }
}
