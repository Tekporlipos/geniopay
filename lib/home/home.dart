import 'package:flutter/material.dart';
import 'package:geniopay/nav_bar/navBarController.dart';
import 'package:get/get.dart';

import '../nav_bar/navbar.dart';
import '../utility/constants.dart';
import 'homeView.dart';

class Home extends GetView<NavBarController>{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    var pages  = [
      const Center(child: Text("Money")),
      const Center(child: Text("Exchange")),
      const HomeView(),
      const Center(child: Text("Wallet")),
      const Center(child: Text("Menu")),
    ];

    Get.put(NavBarController());
    
    return Scaffold(
      backgroundColor: Constants.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => pages[controller.page.value]),
            const NavBar(),
          ],
        ),
      ),
    );
  }

}