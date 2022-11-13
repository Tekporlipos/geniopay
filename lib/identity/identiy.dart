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
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: const TextSpan(
                text: 'We need to verify \nyour',
                style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(text: ' identity', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 30,fontWeight: FontWeight.normal, color: Colors.black87)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                    FunctionWidgets.identityMes("assets/images/home/group.png", "Valid Government Issued ID Document Scan", (){}),
                    const SizedBox(height: 20,),
                    FunctionWidgets.identityMes("assets/images/home/group.png", "Proof of Residence Document Scan", (){}),
                    const SizedBox(height: 20,),
                    FunctionWidgets.identityMes("assets/images/home/group.png", "We will ask you to record a short video of yourself using the app", (){}),
                    const SizedBox(height: 40,),
                    FunctionWidgets.normalTextCenter("Please prepare documents mentioned above!", 18, Constants.secondary),
                    const SizedBox(height: 20,),
                    FunctionWidgets.normalTextCenter("There may be rare situations where we would require your to upload additional documents.", 13, Constants.secondary),
                    const SizedBox(height: 30,),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constants.yellow,
                      ),
                      child:Center(child: FunctionWidgets.boldText("CONTINUE",18,Colors.black)),
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