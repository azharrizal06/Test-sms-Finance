import 'package:azhattest/login/Login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ErrorMessage extends StatelessWidget {
  ErrorMessage({super.key});
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          if (authController.errorMessage.value) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: Colors.yellow.shade100,
              child: const Text(
                "Forbidden Access",
                style: TextStyle(color: Colors.red),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        }),
        const SizedBox(height: 16),
      ],
    );
  }
}
