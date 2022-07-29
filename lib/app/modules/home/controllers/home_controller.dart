import 'package:get/get.dart';
import 'package:walletapp/app/modules/more/views/more_view.dart';
import 'package:walletapp/app/modules/request/views/request_view.dart';
import 'package:walletapp/app/modules/teams/views/teams_view.dart';
import 'package:walletapp/app/modules/wallet/views/wallet_view.dart';

class HomeController extends GetxController {
  // //TODO: Implement HomeController

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

  int currentSelectedIndex = 0;
  final pages = [WalletView(), TeamsView(), RequestView(), MoreView()];

  changeIndex(newIndex) {
    currentSelectedIndex = newIndex;
    print(currentSelectedIndex);
    update();
  }
}
