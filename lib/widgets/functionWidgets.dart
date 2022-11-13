import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/constants.dart';

class FunctionWidgets{
  static Widget smallText(String text,double size,Color colors){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: FontWeight.w500,fontSize: size),);
  }
  static Widget normalText(String text,double size,Color colors,FontWeight fontWeight){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: fontWeight,fontSize: size,),);
  }
  static Widget normalTextCenter(String text,double size,Color colors){
    return Center(child: Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans_medium", color: colors,fontWeight: FontWeight.normal,fontSize: size),textAlign: TextAlign.center,));
  }
  static Widget boldText(String text,double size,Color colors){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans_bold", color: colors,fontWeight: FontWeight.bold,fontSize: size),);
  }



  static Widget smallTextUnderline(String text,double size,Color colors,TextDecoration decoration){
    return Text(text,style:  TextStyle(fontFamily: "IBM_Plex_Sans", color: colors,fontWeight: FontWeight.w500,fontSize: size,decoration: decoration),);
  }

  static Widget customCheckBox(bool checked){
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Constants.secondary,width: 2)
      ),
      child:  Center(child: checked
          ? const Icon(
        Icons.check,
        size: 30.0,
        color: Constants.secondary,
      )
          : const SizedBox(),
      ),
    );
  }


  static Widget identityMes(String svg,String message,Function function){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0,left: 8),
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(44/2),
                color: Constants.primary,
                image:  DecorationImage(
                    image: AssetImage(svg),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        Expanded(
          flex:4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FunctionWidgets.normalText(message, 15, Colors.black87,FontWeight.w700),
              FunctionWidgets.smallTextUnderline("Learn more", 15, Constants.secondary, TextDecoration.underline)
            ],
          ),
        ),
      ],
    );
  }

  static Widget transactions(
      String name,
      String date,
      String state,
      String amount,
      Color color,
      String logo){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(44/2),
                        color: Constants.primary,
                        image: DecorationImage(
                          image: AssetImage(logo),
                          fit: BoxFit.cover
                        )
                    ),
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FunctionWidgets.normalText(name,18,Colors.black87,FontWeight.w700),
                  FunctionWidgets.smallText(date,13,Colors.black38),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FunctionWidgets.normalText(amount, 15, Colors.black54,FontWeight.w700),
              FunctionWidgets.smallText(state, 12, color),
            ],)
        ],
      ),
    );
  }

  static Widget svgInCircle(String svg,String text){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Constants.secondary
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(svg),
          ),
        ),
        const SizedBox(height: 5,),
        normalText(text, 12, Constants.secondary,FontWeight.w700)
      ],
    );
  }

  static Widget barge(Widget widget,int count){
    return Stack(
      children: [
         widget,
        Positioned(
          right: 0,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.circular(12/2)
            ),
            child: Center(child: Text(count.toString(),style: const TextStyle(fontSize: 8,color: Colors.white),),),
          ),
        )
      ],
    );
  }

  static Widget customCard(String title,String message,String image,Color color){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FunctionWidgets.boldText(title, 15, Colors.white),
                  const SizedBox(height: 5,),
                  FunctionWidgets.smallText(message, 12, Colors.white),
                ],
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }

  
 static Widget customOpCard(String logo,Widget title,Widget message,String state,String old){
    return  Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child:Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(40/2),
                        color: Constants.primary,
                        image:  DecorationImage(
                            image: AssetImage(logo),
                            fit: BoxFit.cover
                        )
                    ),
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title,
                  message,
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  FunctionWidgets.boldText(state,15,Constants.secondary),
                  FunctionWidgets.smallTextUnderline(old,13,Colors.black87,TextDecoration.lineThrough)
                ],
              ),
              const SizedBox(width: 10,),
              const Icon(Icons.play_arrow,color: Constants.secondary,),
            ],
          )
        ],
      ),
    );
  }
  

}