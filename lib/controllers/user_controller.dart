import 'package:get/get.dart';

class UserController extends GetxController {
  signup() {}

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
