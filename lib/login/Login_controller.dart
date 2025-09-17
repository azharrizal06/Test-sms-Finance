import 'dart:convert';
import 'package:azhattest/home/home_screen.dart';
import 'package:azhattest/login/register_screen.dart';
import 'package:azhattest/service/servise.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  var isLoading = false.obs;
  var isLoggedIn = false.obs;
  var errorMessage = false.obs;

  Future<void> login({
    required String email,
    required String password,
    required String datetime,
    required String signature,
  }) async {
    try {
      isLoading.value = true;

      final body = jsonEncode({
        "email": email,
        "password": password,
        "datetime": datetime,
        "signature": signature,
      });

      final headers = {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      };
      final response = await http.post(
        Uri.parse(baseUrl + 'login'),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        Get.snackbar("Success", "Login berhasil");
        Get.to(() => const HomeScreen());
      } else {
        errorMessage.value = true;
      }
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String datetime,
    required String signature,
  }) async {
    try {
      isLoading.value = true;

      final body = jsonEncode({
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "datetime": datetime,
        "signature": signature,
      });

      final response = await http.post(
        Uri.parse(baseUrl + 'register'),
        headers: {"Content-Type": "application/json"},
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Get.back();

        Get.snackbar("Success", "Registrasi berhasil: ${data.toString()}");
      } else {
        Get.snackbar("Error", "Registrasi gagal (${response.statusCode})");
      }
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan: $e");
    } finally {
      isLoading.value = false;
    }
  }

  void logout() {
    isLoggedIn.value = false;
    Get.snackbar("Logout", "Berhasil logout");
  }
}
