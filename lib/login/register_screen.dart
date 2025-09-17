import 'package:azhattest/login/Login_controller.dart';
import 'package:azhattest/widget/ErrorMessage.dart';
import 'package:azhattest/widget/text_nput_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _notelponController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Register your account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ErrorMessage(),
            TextInputWidget(
              controller: _namaController,
              labelText: "Nama",
              obscureText: false,
            ),
            const SizedBox(height: 12),
            TextInputWidget(
              controller: _emailController,
              labelText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 12),
            TextInputWidget(
              controller: _notelponController,
              labelText: "Nomor Telepon",
              obscureText: false,
            ),
            const SizedBox(height: 12),
            TextInputWidget(
              controller: _passwordController,
              labelText: "password",
              obscureText: false,
            ),
            const SizedBox(height: 12),
            TextInputWidget(
              controller: _confirmpasswordController,
              labelText: "confirm password",
              obscureText: false,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("CENCEL"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await authController.register(
                        name: _namaController.text,
                        email: _emailController.text,
                        phone: _notelponController.text,
                        password: _passwordController.text,
                        datetime: "datetime",
                        signature: "signature",
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("REGISTER"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
