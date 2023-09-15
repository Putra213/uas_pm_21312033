import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_21312033/app/controllers/auth_controller.dart';
import 'package:uas_21312033/app/routes/app_pages.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final cEmail = TextEditingController();
  final cPass = TextEditingController();
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: cEmail,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: ()=> cAuth.resetPassword(cEmail.text), 
              child: Text("Reset Password")
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun"),
                TextButton(
                  onPressed: ()=> Get.toNamed(Routes.LOGIN), 
                  child: Text("Klik disini")),
              ],
            ),
          ],
      ),
      ),
    );
  }
}
