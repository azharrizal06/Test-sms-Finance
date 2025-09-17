import 'package:get/get.dart';
import '../model/model_user.dart';

class HomeCntroller extends GetxController {
  var users = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // data dummy
    users.value = [
      UserModel(
        name: "Ujang Bakrie",
        email: "ujang.bakrie@gmail.com",
        phone: "+62 8123 4567 89",
      ),
      UserModel(
        name: "azhar",
        email: "azhar@gmail.com",
        phone: "+62 8123 4567 89",
      ),
      UserModel(
        name: "ahmad",
        email: "ahmad@gmail.com",
        phone: "+62 8123 4567 89",
      ),
    ];
  }
}
