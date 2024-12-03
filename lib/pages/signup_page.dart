import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var msg = "message";

  var buttonColor = Colors.blue;

  var usernameController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Signup',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  hintText: "Name",
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
                if (usernameController.text == "admin") {
                  if (passwordController.text == "123") {
                    setState(() {
                      buttonColor = Colors.green;
                      msg = "You are logged in";
                    });

                    Get.defaultDialog(title: "You are Logged in");
                  } else {
                    setState(() {
                      buttonColor = Colors.red;
                      msg = "wrong password";
                    });

                    Get.snackbar("Error", "wrong password");
                  }
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
              child: Text('Signup'),
            ),
          ),
          GestureDetector(
            child: Text("Already have account? Login"),
            onTap: () => Get.off(LoginPage()),
          )
        ],
      ),
    );
  }
}
