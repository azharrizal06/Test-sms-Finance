import 'package:azhattest/widget/text_nput_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _notelponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("CANCEL"),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    // simpan data
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("SAVE"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
