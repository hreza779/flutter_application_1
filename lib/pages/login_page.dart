import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // چارچوب کلی صفحه
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        Zitle: const Text(
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextField(
              // مشخص کردن نوع ورودی
              keyboardType: TextInputType.emailAddress,
              // ظاهر
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: TextField(
              maxLength: 8,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton(
              onPressed: () {
                // هر کدی نوشته شود زمان کلیک روی دکمه اجرا خواهد شد
              },
              child: Text('Login'),
            ),
          ),
          Text("Dont have account? Signup")
        ],
      ),
    );
  }
}
