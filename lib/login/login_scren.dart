import 'package:azhattest/login/Login_controller.dart';
import 'package:azhattest/login/register_screen.dart';

import 'package:azhattest/widget/ErrorMessage.dart';
import 'package:flutter/material.dart';
import 'package:azhattest/widget/text_nput_login.dart';
import 'package:get/get.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? errorMessage;

  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ErrorMessage(),
              TextInputWidget(
                controller: _emailController,
                labelText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 12),
              TextInputWidget(
                controller: _passwordController,
                labelText: "Password",
                obscureText: false,
              ),
              const SizedBox(height: 20),
              loginButom(),
              const SizedBox(height: 10),
              newaccont(),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButom() {
    return Center(
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () async {
            await authController.login(
              email: _emailController.text,
              password: _passwordController.text,
              datetime: "datetime",
              signature: "signature",
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text("LOGIN"),
        ),
      ),
    );
  }

  Widget newaccont() {
    return Center(
      child: TextButton(
        onPressed: () {
          Get.to(const RegisterScreen());
        },
        child: const Text(
          "Create new Account",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
