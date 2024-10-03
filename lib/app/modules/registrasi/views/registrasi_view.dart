import 'package:aplikasi_wisata/app/models/buttonSign_model.dart';
import 'package:aplikasi_wisata/app/models/textLogin_model.dart';
import 'package:aplikasi_wisata/app/modules/home/views/home_view.dart';
import 'package:aplikasi_wisata/app/modules/login/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registrasi_controller.dart';

class registrasiView extends GetView<RegistrasiController> {
  registrasiView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
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
                    width:
                        180, // Pastikan width sama dengan height untuk bentuk lingkaran
                    fit: BoxFit
                        .cover, // Memastikan gambar mengisi area tanpa distorsi
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
                      color: const Color.fromARGB(255, 78, 172, 248),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //registrasi widget
                InputUser(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(
                  height: 15,
                ),
                InputUser(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: false,
                  prefixIcon: Icon(Icons.lock),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          // Anda bisa menggunakan setState atau state management di sini
                          isChecked = value ?? true;
                        },
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: "Saya menyetujui ",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("klik syarat");
                                  },
                                text: "syarat",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 78, 172, 248)),
                              ),
                              TextSpan(
                                text: ",",
                                style: TextStyle(color: Colors.red),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("klik ketentuan");
                                  },
                                text: " ketentuan",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 78, 172, 248)),
                              ),
                              TextSpan(
                                text: ", dan",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("klik privasi");
                                  },
                                text: " privasi",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 78, 172, 248)),
                              ),
                              TextSpan(
                                text: " Aplikasi ini ",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
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
                    Get.to(LoginView());
                  },
                  text: "Buat akun",
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
                  text: "Masuk dengan google",
                  backgroundColor: Colors.white,
                  textColor: Colors.black54,
                  icon: Icon(Icons.account_circle),
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
                      const TextSpan(text: "Sudah punya akun? "),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/login');
                          },
                          child: Text(
                            "Masuk",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 78, 172, 248),
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
