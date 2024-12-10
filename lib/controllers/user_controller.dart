import 'package:get/get.dart';

class UserController extends GetxController {
  signup() {}

  getUserDate() {
    var userDate = {'name': 'Hamidreza', 'mobile': '09123456789'};
    return userDate;
  }

  login(var username, var pass) {
    if (username == 'admin') {
      if (pass == '123') {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
