import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geniopay/utility/pages.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/borderGradiant.dart';
import '../widgets/customeNavBar/CurvedNavigationBar.dart';
import '../widgets/functionWidgets.dart';
import 'homeController.dart';

class Home extends GetView<HomeController>{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.primary,
        body: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16, bottom: 34),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: BorderGradiant.borderGradiant(
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipOval(child: Image.asset("assets/images/home/profile.png",width: 38,height: 38,fit: BoxFit.cover,),),
                                ),22),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FunctionWidgets.smallText("Good Morning",14,Constants.secondary),
                             FunctionWidgets.boldText("New Genius",20,Constants.secondary),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/images/home/Vector.svg"),
                             Padding(
                              padding: const EdgeInsets.only(left: 4.0,right: 4),
                              child: FunctionWidgets.barge(const Icon(Icons.notifications_outlined,color: Constants.secondary,), 2)
                            ),
                            const Icon(Icons.help_outline,color: Constants.secondary,size: 24,),
                          ],
                        ),
                        Row(
                          children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 4.0, top: 2),
                             child: FunctionWidgets.boldText("10 000",11,Constants.secondary),
                           ),
                            const Icon(Icons.star,color: Constants.yellow,size: 16,)
                          ],
                        )
                      ],)
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: BorderGradiant.borderGradiant(
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,right: 16, bottom: 24,top: 24),
                        child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(),
                            FunctionWidgets.normalText("Total Balance", 14,Constants.secondaryLighter),
                            SvgPicture.asset("assets/images/home/Show.svg"),
                          ],
                        ),
                      const SizedBox(height: 20,),
                      FunctionWidgets.boldText("\$450.49", 38, Constants.secondary),
                      const SizedBox(height: 10,),

                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constants.secondaryLighter,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6.0,right: 6),
                          child: DropdownButton(
                            icon: const Icon(Icons.arrow_drop_down_outlined,color: Constants.secondary,size:12 ,),
                            alignment: AlignmentDirectional.center,
                            dropdownColor: Constants.primary,
                              underline: const SizedBox(),
                              items: [
                                DropdownMenuItem(
                                  onTap: (){},
                                  child: FunctionWidgets.normalText("USD", 12, Constants.secondary),
                                )
                              ], onChanged: (value){},
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(child: Container(
                        height: 2,
                        color: const Color.fromRGBO(0, 138, 167, 0.1),
                      ),),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          InkWell(
                            onTap: (){
                              Get.toNamed(Pages.registration);
                            },
                            child: FunctionWidgets.svgInCircle("assets/images/home/Arrow - Right Square.svg","Pay out"),),
                          InkWell(
                              onTap: (){
                                Get.toNamed(Pages.identity);
                              },
                              child:FunctionWidgets.svgInCircle("assets/images/home/Login.svg","Pay in"),),

                          InkWell(
                              onTap: (){
                                Get.toNamed(Pages.exchange);
                              },
                              child: FunctionWidgets.svgInCircle("assets/images/home/Wallet.svg","Exchange")),
                          InkWell(
                              onTap: (){
                                Get.toNamed(Pages.plans);
                              },
                              child: FunctionWidgets.svgInCircle("assets/images/home/Category.svg","More"),),

                        ],
                      ),
                      const SizedBox(height: 30,),
                    ],
                  ),
                      ), 30),
                ),

         Material(
           borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
           elevation: 8,
           shadowColor: Colors.grey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                 child: SizedBox(child: Container(
                   width: 30,
                   height: 3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Constants.primary,
                   ),

                 ),),
               ),

               SizedBox(
                   height: 105.0,
                   child:  ListView(
                     scrollDirection: Axis.horizontal,
                     children: <Widget>[
                       FunctionWidgets.customCard("Invite your friends", "For every invite you win \$20!\nClick here to start inviting your friends.", "assets/images/home/Verde Sencillo Educación.png", Constants.secondaryLight),
                       FunctionWidgets.customCard("Invite your friends", "For every invite you win \$20!\nClick here to start inviting your friends.", "assets/images/home/Verde Sencillo Educación.png", Constants.red),
                       FunctionWidgets.customCard("Invite your friends", "For every invite you win \$20!\nClick here to start inviting your friends.", "assets/images/home/Verde Sencillo Educación.png", Constants.green),
                       FunctionWidgets.customCard("Invite your friends", "For every invite you win \$20!\nClick here to start inviting your friends.", "assets/images/home/Verde Sencillo Educación.png", Constants.brownLight),
                     ],
                   )
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     FunctionWidgets.normalText("Transactions", 15, Colors.black),

                     FunctionWidgets.smallTextUnderline("View All", 12, Colors.black54,TextDecoration.underline),
                   ],
                 ),
               ),


               FunctionWidgets.transactions("Dribble", "2021.05.04", "Completed", "-\$ 99.00", Colors.green, "assets/images/home/group.png"),
               FunctionWidgets.transactions("Spotify", "2021.05.04", "In Progress", "-\$ 99.00", Colors.orangeAccent, "assets/images/home/spotify.png"),
               FunctionWidgets.transactions("Spotify", "2021.05.04", "Completed", "-\$ 99.00", Colors.green, "assets/images/home/spotify.png"),

               const SizedBox(height: 70,)
             ],
           ),
         ),
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: CurvedNavigationBar(
              index: 2,
              height: 74,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Constants.secondary,
              items:  <Widget>[
                SvgPicture.asset("assets/images/nav/card.svg"),
                SvgPicture.asset("assets/images/nav/dollar-square.svg"),
                SvgPicture.asset("assets/images/logo.svg",),
                SvgPicture.asset("assets/images/nav/wallet.svg"),
                SvgPicture.asset("assets/images/nav/menu.svg"),
              ],
              onTap: (index) {},
              ),
            )
          ],
        ),
      ),
    );
  }

}