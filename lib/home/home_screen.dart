import 'package:azhattest/edit/edit_screen.dart';
import 'package:azhattest/home/home_cntroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeCntroller userController = Get.put(HomeCntroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(),
      body: Obx(() {
        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              elevation: 3,
              child: ListTile(
                title: Text(
                  user.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(user.email), Text(user.phone)],
                ),
                trailing: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: IconButton(
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: () {
                        Get.to(() => EditScreen());
                        Get.snackbar("Edit", "Edit ${user.name}");
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }

  PreferredSizeWidget appBarCustom() {
    return AppBar(
      title: const Text("LIST USER"),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () async {
          final RenderBox appBarBox =
              context.findRenderObject() as RenderBox; // posisi AppBar
          final Offset offset = appBarBox.localToGlobal(Offset.zero);

          final selected = await showMenu<String>(
            context: context,
            position: RelativeRect.fromLTRB(
              offset.dx,
              offset.dy + kToolbarHeight,
              offset.dx + 50,
              0,
            ),
            items: [
              const PopupMenuItem(value: "logout", child: Text("LOGOUT")),
            ],
          );

          if (selected == "logout") {
            Get.snackbar("Logout", "Berhasil logout");
            // contoh redirect
            // Get.offAll(LoginPage());
          }
        },
      ),
    );
  }
}
