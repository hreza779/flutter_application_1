import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/user_controller.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var msg = "message";
  var buttonColor = Colors.blue;
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  final usercontroller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    // چارچوب کلی صفحه
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Mohajer',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Wellcome to my app \n please login to use!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextField(
              controller: usernameController,
              // مشخص کردن نوع ورودی
              keyboardType: TextInputType.emailAddress,
              // ظاهر
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextField(
              controller: passwordController,
              maxLength: 8,
              obscureText: true,
              decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton(
              onPressed: () {
                if (usercontroller.login(
                    usernameController.text, passwordController.text)) {
                  setState(() {
                    buttonColor = Colors.green;
                    msg = "You are logged in";
                  });
                  Get.off(HomePage());
                } else {
                  setState(() {
                    buttonColor = Colors.red;
                    msg = "wrong username";
                  });
                  Get.snackbar("Error", "wrong username",
                      snackStyle: SnackStyle.GROUNDED);
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(buttonColor)),
              child: Text('Login'),
            ),
          ),
          GestureDetector(
            child: Text("Dont have account? Signup"),
            onTap: () => Get.off(SignupPage()),
          )
        ],
      ),
    );
  }
}
