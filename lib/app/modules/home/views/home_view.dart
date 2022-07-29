import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:walletapp/app/modules/home/views/widget/custom_icon.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (controller) {
        return homeController.pages[homeController.currentSelectedIndex];
      }),
      bottomNavigationBar: GetBuilder<HomeController>(builder: (controller) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 171, 52, 192),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Custom.wallet,
                  size: 18,
                ),
                label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(
                  Custom.teams,
                  size: 18,
                ),
                label: "Teams"),
            BottomNavigationBarItem(
                icon: Icon(
                  Custom.request,
                  size: 18,
                ),
                label: "Request"),
            BottomNavigationBarItem(
                icon: Icon(
                  Custom.more,
                  size: 18,
                ),
                label: "More")
          ],
          onTap: (newIndex) {
            homeController.changeIndex(newIndex);
          },
        );
      }),
    );
  }
}
