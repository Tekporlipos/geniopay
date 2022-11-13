import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geniopay/home/homeController.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../utility/pages.dart';
import '../widgets/borderGradiant.dart';
import '../widgets/functionWidgets.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 24,right: 24, bottom: 34),
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
                          child: ClipOval(child: Image.asset("assets/images/home/profile.png",width: 48,height: 48,fit: BoxFit.cover,),),
                        ),27),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FunctionWidgets.normalText("Good Morning",12,Constants.secondary,FontWeight.w500),
                      FunctionWidgets.normalText("New Genius",18,Constants.secondary,FontWeight.w700),
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
                          padding: const EdgeInsets.only(left: 5.0,right: 5),
                          child: FunctionWidgets.barge(SvgPicture.asset("assets/images/home/notification.svg"), 2)
                      ),
                      const Icon(Icons.help_outline,color: Constants.secondary,size: 24,),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0, top: 2),
                        child: FunctionWidgets.normalText("10 000",12,Constants.secondary,FontWeight.w600),
                      ),
                      SvgPicture.asset("assets/images/home/star.svg"),
                    ],
                  )
                ],)
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(left: 24.0,right: 24),
          child: BorderGradiant.borderGradiant(
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16, bottom: 16,top: 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(),
                        FunctionWidgets.normalText("Total Balance", 14,const Color.fromRGBO(0, 138, 167, 0.6),FontWeight.w300),
                        const Icon(Icons.remove_red_eye_outlined,color: Constants.secondary,),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    FunctionWidgets.normalText("\$450.49", 44, Constants.secondary,FontWeight.w600),
                    const SizedBox(height: 24,),

                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constants.secondaryLighter,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0,right: 6),
                        child: DropdownButton(
                          icon: SvgPicture.asset("assets/images/registration/Arrow-Down2.svg"),
                          alignment: AlignmentDirectional.center,
                          dropdownColor: Constants.primary,
                          underline: const SizedBox(),
                          items: [
                            DropdownMenuItem(
                              onTap: (){},
                              child: FunctionWidgets.normalText("USD", 12, Constants.secondary,FontWeight.w300),
                            )
                          ], onChanged: (value){},
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(child: Container(
                      height: 2,
                      color: const Color.fromRGBO(0, 138, 167, 0.1),
                    ),),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        InkWell(
                          onTap: (){
                            Get.snackbar("Error", "Function not implemented",snackPosition: SnackPosition.BOTTOM);
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
                  ],
                ),
              ), 30),
        ),
        const SizedBox(height: 14,),
        Expanded(
          child: DraggableScrollableSheet(
            initialChildSize: 0.95,
            builder: (BuildContext context, ScrollController scrollController) {
              return Material(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                elevation: 8,
                shadowColor: Colors.grey,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,bottom: 16),
                        child: SizedBox(child: Container(
                          width: 20,
                          height: 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Constants.primary,
                          ),

                        ),),
                      ),

                      Container(
                        padding: const EdgeInsets.only(left: 16),
                          height: 105.0,
                          child:  ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FunctionWidgets.customCard("Invite your friends", "For every invite you win \$20!\nClick here to start inviting your friends.", "assets/images/home/Verde Sencillo Educación.png", Constants.secondaryLight),
                              FunctionWidgets.customCard("Create a Jar", "Save and grow your money effortlessly. \nYou can start wit as little as \$1.00.", "assets/images/home/Verde Sencillo Educación.png", Constants.red),
                              FunctionWidgets.customCard("Plant a tree", "Calculate and offset your carbon \nfootprint by planting a tree.", "assets/images/home/Verde Sencillo Educación.png", Constants.green),
                              FunctionWidgets.customCard("Open Business Account", "Automate your business payments and \ntrack all clients in one place.", "assets/images/home/Verde Sencillo Educación.png", Constants.brownLight),
                            ],
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0,right: 24,top: 16,bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FunctionWidgets.normalText("Transactions", 14, Constants.title,FontWeight.w600),

                            FunctionWidgets.smallTextUnderline("View All", 12, Constants.lighten,TextDecoration.underline),
                          ],
                        ),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FunctionWidgets.transactions("Dribble", "2021.05.04", "Completed", "-\$ 99.00", Colors.green, "assets/images/home/group.png"),
                          FunctionWidgets.transactions("Spotify", "2021.05.04", "In Progress", "-\$ 99.00", Colors.orangeAccent, "assets/images/home/spotify.png"),
                          FunctionWidgets.transactions("Spotify", "2021.05.04", "Completed", "-\$ 99.00", Colors.green, "assets/images/home/spotify.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

}