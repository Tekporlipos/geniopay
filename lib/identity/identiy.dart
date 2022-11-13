import 'package:flutter/material.dart';
import 'package:geniopay/identity/identityController.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/functionWidgets.dart';

class Identity extends GetView<IdentityController>{
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constants.primary,
      appBar: AppBar(
        backgroundColor: Constants.primary,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: const Icon(Icons.arrow_back,color: Colors.black,),),
        centerTitle: true,
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child:IconButton(onPressed: (){}
              ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
          ),
        ],
      ),
      body: Column(
        children: [
            Expanded(
              flex: 2,
              child: Padding(
              padding: const EdgeInsets.only(left: 24.0,right:24,bottom: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: RichText(
                  text: const TextSpan(
                    text: 'We need to verify \nyour',
                    style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 30,fontWeight: FontWeight.w600, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: ' identity', style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 30,fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              ),
            ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0,right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    FunctionWidgets.identityMes("assets/images/registration/bx_id_card.svg", "Valid Government Issued ID Document Scan", (){}),
                    const SizedBox(height: 30,),
                    FunctionWidgets.identityMes("assets/images/registration/bx_home_heart.svg", "Proof of Residence Document Scan", (){}),
                    const SizedBox(height: 30,),
                    FunctionWidgets.identityMes("assets/images/registration/bx_camera_movie.svg", "We will ask you to record a short video of yourself using the app", (){}),
                    const SizedBox(height: 40,),
                    FunctionWidgets.normalTextCenter("Please prepare documents \nmentioned above!", 18, Constants.secondary,FontWeight.w600),
                    const SizedBox(height: 20,),
                    FunctionWidgets.normalTextCenter("There may be rare situations where we would require your to upload additional documents.", 14, Constants.secondary,FontWeight.w400),
                    const SizedBox(height: 30,),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Constants.yellow,
                      ),
                      child:Center(child: FunctionWidgets.normalText("CONTINUE",14,Colors.black,FontWeight.w600)),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}