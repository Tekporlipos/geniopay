import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utility/constants.dart';
import '../widgets/functionWidgets.dart';
import 'registrationsController.dart';

class Registration extends GetView<RegistrationController>{
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegistrationController());
    return  Scaffold(
      backgroundColor: Constants.bg,
      appBar: AppBar(
        backgroundColor: Constants.bg,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: const Icon(Icons.arrow_back,color: Colors.black,),),
        centerTitle: true,
        title: FunctionWidgets.normalText("Registration", 16, Constants.title,FontWeight.w700),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child:IconButton(onPressed: (){}
              ,icon: const Icon(Icons.help_outline,color: Colors.black,),),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 16.0,bottom: 16),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Individual Self-Certification relevant for ',
                style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(text: 'FATCA', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 16,fontWeight: FontWeight.w600)),
                  TextSpan(text: ' and ', style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400)),
                  TextSpan(text: 'CRS', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 16,fontWeight: FontWeight.w600)),
                  TextSpan(text: ' purposes', style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24,bottom: 8),
            child: FunctionWidgets.normalText("1. Country of your Tax Residence", 16, Constants.secondary,FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: FunctionWidgets.normalText("Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country:", 14, Colors.black,FontWeight.w400),
          ),
          const SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Constants.primary,
                border: Border.all(color: Constants.secondary,width: 1.09),
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
                                      image: AssetImage("assets/images/registration/brazil.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            )
                        ),
                        Padding(
                         padding: const EdgeInsets.only(left: 8.0,right: 8),
                         child: SvgPicture.asset("assets/images/registration/Arrow-Down2.svg"),
                       ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          FunctionWidgets.normalText("Country", 12, Constants.light,FontWeight.w300),
                          FunctionWidgets.normalText("Brazil", 14, Colors.black,FontWeight.w600)
                        ],)
                      ],
                    ),
                  )
                ], onChanged: (value){},
              ),
            ),
          ),

          const SizedBox(height: 16,),

          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Constants.secondary,width: 1.09),
              ),
              child: TextFormField(
                onChanged: (value){
                  controller.tin.value = value;
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter TIN',
                    contentPadding:
                    EdgeInsets.only(left: 8),
                    labelStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.w300,fontSize: 14,fontFamily: "IBM_Plex_Sans")
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Align(alignment: Alignment.centerRight,child: SvgPicture.asset("assets/images/registration/bin.svg",width: 16,height: 16,),),
          ),
          const SizedBox(height: 17,),
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(40/2),
                    color: Constants.primary,
                ),
                child:  Center(child: SvgPicture.asset("assets/images/registration/add.svg",width: 16,height: 16,),),
              ),
              const SizedBox(height: 8,),
              FunctionWidgets.normalText("Add another country", 14, Colors.black,FontWeight.w300),
            ],
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: FunctionWidgets.normalText("2. FATCA related", 16, Constants.secondary,FontWeight.w600),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: FunctionWidgets.normalText("Please select one of the options by checking the corresponding box below:", 14, Colors.black,FontWeight.w400),
          ),
          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I hereby certify that ',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Constants.lighten,fontWeight: FontWeight.w300),
                      children: <TextSpan>[
                        TextSpan(text: 'I am a tax resident of the united state', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 14,fontWeight: FontWeight.w600)),
                        TextSpan(text: '  and that I have designated the United State as one of the countries in the above section. ', style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Constants.lighten,fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child:  Obx(()=>InkWell(
                      onTap: (){
                        if(controller.fatca.value != "taxed"){
                          controller.fatca.value = "taxed";
                        }else{
                          controller.fatca.value = "";
                        }
                      },
                      child: FunctionWidgets.customCheckBox(controller.fatca.value == "taxed")),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Container(
              height: 1,
              width: Get.width,
              color: Constants.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 16.0,bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I hereby certify that ',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Constants.lighten,fontWeight: FontWeight.w300),
                      children: <TextSpan>[
                        TextSpan(text: 'I am not a tax resident of the united state.', style: TextStyle(fontFamily: "IBM_Plex_Sans",color: Constants.secondary,fontSize: 14,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Obx(()=>InkWell(
                      onTap: (){
                        if(controller.fatca.value != "notTaxed"){
                          controller.fatca.value = "notTaxed";
                        }else{
                          controller.fatca.value = "";
                        }
                      },
                      child: FunctionWidgets.customCheckBox(controller.fatca.value == "notTaxed"))),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Container(
              height: 2,
              width: Get.width-32,
              color: Constants.primary,
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: FunctionWidgets.normalText("2. Declaration", 16, Constants.secondary,FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24 ,top: 10),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'I here by declare that information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that i will inform you within 30 days if any certification on this form becomes incorrect or will no longer be applied.',
                      style: TextStyle(fontFamily: "IBM_Plex_Sans",fontSize: 14,color: Constants.lighten,fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Obx(()=>InkWell(
                      onTap: (){
                        controller.declaration.value = !controller.declaration.value;
                      },
                      child: FunctionWidgets.customCheckBox(controller.declaration.value))),),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Container(
              height: 2,
              width: Get.width-32,
              color: Constants.primary,
            ),
          ),
          const SizedBox(height: 30,),
          Align( alignment: Alignment.center,child: FunctionWidgets.normalText("Date: ${controller.now.toString().substring(0,10)}", 16, Constants.secondary,FontWeight.w600)),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: InkWell(
              onTap: (){
                controller.register();
              },



              child: Obx(()=>Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: controller.declaration.value?Constants.secondary:Constants.primary,
                ),
                child:Center(child: FunctionWidgets.normalText("CONTINUE",14,Constants.lighten,FontWeight.w300)),
              )),
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }

}