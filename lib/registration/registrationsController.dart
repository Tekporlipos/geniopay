import 'package:geniopay/utility/constants.dart';
import 'package:geniopay/utility/pages.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{

  var tin = "".obs;
  var fatca = "".obs;
  var declaration = false.obs;
  final now = DateTime.now();

  void register(){
    if(declaration.value && fatca.value == "taxed" && tin.value.isNotEmpty){
      Get.toNamed(Pages.home);
    }else{
      Get.snackbar("Not Authorize", "You do not qualify for this service",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constants.bg);
    }
  }

}