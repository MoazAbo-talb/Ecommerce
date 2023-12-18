import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "not valid username".tr;
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "not valid email".tr;
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone".tr;
    }
  }
  if(val.isEmpty){
    return "field can't be empty".tr;
  }
  if (val.length < min) {
    return ' cannot be less than $min characters';
  }
  if (val.length > max) {
    return ' cannot be more than $max characters';
  }
}
