import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/functionWidgets.dart';
import 'registrationsController.dart';

class Registration extends GetView<RegistrationController>{
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: const Icon(Icons.arrow_back,color: Colors.black,),),
        centerTitle: true,
        title: FunctionWidgets.boldText("Registration", 14, Colors.black87),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Individual Self-Certification relevant for ',
                style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",fontSize: 15,color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(text: 'FATCA', style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",color: Constants.secondary,fontSize: 15)),
                  TextSpan(text: ' and ', style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",fontSize: 15,color: Colors.black87)),
                  TextSpan(text: 'CRS', style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",color: Constants.secondary,fontSize: 15)),
                  TextSpan(text: ' purposes', style: TextStyle(fontFamily: "IBM_Plex_Sans_bold",fontSize: 15,color: Colors.black87)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.boldText("1. Country of your Tax Residence", 18, Constants.secondary),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.normalText("Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country:", 15, Colors.black),
          ),
          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.secondaryLighter,
                border: Border.all(color: Constants.secondary,width: 2),
              ),
              child: DropdownButton(
                icon: const SizedBox(),
                alignment: AlignmentDirectional.center,
                underline: const SizedBox(),
                items: [
                  DropdownMenuItem(
                    onTap: (){},
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 4.0,left: 8),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.circular(30/2),
                                  color: Constants.primary,
                                  image: const DecorationImage(
                                      image: AssetImage("assets/images/home/spotify.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            )
                        ),
                       const Padding(
                         padding: EdgeInsets.only(left: 8.0,right: 8),
                         child: Icon(Icons.arrow_drop_down_outlined,color: Constants.secondary,),
                       ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          FunctionWidgets.normalText("Country", 15, Colors.black54),
                          FunctionWidgets.boldText("Brazil", 15, Colors.black)
                        ],)
                      ],
                    ),
                  )
                ], onChanged: (value){},
              ),
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Constants.secondary,width: 2),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter TIN',
                    contentPadding:
                    EdgeInsets.all(8),
                  labelStyle: TextStyle(color: Colors.black54)
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Align(alignment: Alignment.centerRight,child: Icon(Icons.delete_outline_outlined,color: Constants.secondary,)),
          ),
          const SizedBox(height: 20,),
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50/2),
                    color: Constants.secondaryLighter,
                ),
                child: const Center(child: Icon(Icons.add,color: Constants.secondary,)),
              ),
              FunctionWidgets.normalText("Add another country", 18, Colors.black87),
            ],
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.boldText("2. FATCA related", 18, Constants.secondary),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.normalText("Please select one of the options by checking the corresponding box below:", 15, Colors.black),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I hereby certify that ',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black54),
                      children: <TextSpan>[
                        TextSpan(text: 'I am a tax resident of the united state', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",color: Constants.secondary,fontSize: 15)),
                        TextSpan(text: '  and that I have designated the United State as one of the countries in the above section. ', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black54)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: FunctionWidgets.customCheckBox(true),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              height: 2,
              width: Get.width-32,
              color: Constants.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I hereby certify that ',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black54),
                      children: <TextSpan>[
                        TextSpan(text: 'I am not a tax resident of the united state.', style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",color: Constants.secondary,fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: FunctionWidgets.customCheckBox(true),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              height: 2,
              width: Get.width-32,
              color: Constants.primary,
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.boldText("2. Declaration", 18, Constants.secondary),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16 ,top: 10),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I here by declare that information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that i will inform you within 30 days if any certification on this form becomes incorrect or will no longer be aplied.',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans_medium",fontSize: 15,color: Colors.black54),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: FunctionWidgets.customCheckBox(true),),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              height: 2,
              width: Get.width-32,
              color: Constants.primary,
            ),
          ),
          const SizedBox(height: 30,),
          Align( alignment: Alignment.center,child: FunctionWidgets.boldText("Date: 15.08.2022", 16, Constants.secondary)),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.secondaryLighterFade,
              ),
              child:Center(child: FunctionWidgets.boldText("CONTINUE",18,Colors.black45)),
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }

}