import 'package:aplikasi_wisata/app/models/buttonSign_model.dart';
import 'package:aplikasi_wisata/app/models/textLogin_model.dart';
import 'package:aplikasi_wisata/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/tiputolo.png',
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Colors.black, Colors.grey],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                  child: Text(
                    "Let's Found Hidden Place!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Login widget
                InputUser(
                  controller: phoneNumController,
                  hintText: 'Phone',
                  obscureText: false,
                  prefixIcon: Icon(Icons.phone),
                ),
                SizedBox(
                  height: 15,
                ),
                Button(
                  onTap: () {},
                  text: "Kirim OTP",
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black54, // Warna garis
                          thickness: 1, // Ketebalan garis
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Atau", // Teks di tengah garis
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54, // Warna teks
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black54, // Warna garis
                          thickness: 1, // Ketebalan garis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Button(
                  onTap: () {
                    Get.to(HomeView());
                  },
                  text: "Masuk dengan email",
                  backgroundColor: Colors.white,
                  textColor: Colors.black54,
                  icon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 25,
                ),
                Button(
                  onTap: () {
                    Get.to(HomeView());
                  },
                  text: "Masuk dengan google",
                  backgroundColor: Colors.white,
                  textColor: Colors.black54,
                  icon: Icon(Icons.login),
                ),

                const SizedBox(
                  height: 30,
                ),

                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                    children: [
                      const TextSpan(text: "Belum punya akun? "),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/registrasi');
                          },
                          child: Text(
                            "Silahkan daftar",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
