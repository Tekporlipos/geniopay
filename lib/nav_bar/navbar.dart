import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geniopay/nav_bar/navBarController.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/customeNavBar/CurvedNavigationBar.dart';

class NavBar extends GetView<NavBarController>{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(NavBarController());

   return  Align(
     alignment: Alignment.bottomCenter,
     child: Obx(()=>CurvedNavigationBar(
       index: 2,
       height: 74,
       backgroundColor: Colors.transparent,
       buttonBackgroundColor: Constants.secondary,
       items:  <Widget>[
         SvgPicture.asset("assets/images/nav/card.svg"),
         SvgPicture.asset("assets/images/nav/dollar-square.svg"),
         controller.page.value != 2?SvgPicture.asset("assets/images/logo_dark.svg") :SvgPicture.asset("assets/images/logo.svg"),
         SvgPicture.asset("assets/images/nav/wallet.svg"),
         SvgPicture.asset("assets/images/nav/menu.svg"),
       ],
       onTap: (index) {
         controller.page.value = index;
       },
     )),
   );
  }

}