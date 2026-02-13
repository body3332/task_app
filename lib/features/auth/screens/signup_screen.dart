// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:task_app/features/auth/screens/screens/phone_registration_screen.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/auth_text_field.dart';
import 'phone_registration_screen.dart'; // الشاشة الجديدة اللي عملناها

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            // لضمان محاذاة العناصر لليسار (Center Left)
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const SizedBox(height: 30),

              // اللوجو في المنتصف
              Center(
                child: Image.asset(
                  'assets/images/carrot_orange.png', 
                  height: 50,
                ),
              ),

              const SizedBox(height: 40),

              // نصوص الترحيب
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your credentials to continue",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              const SizedBox(height: 30),

              // حقول الإدخال (تم تنظيفها وحذف الـ alignment)
              const AuthTextField(
                label: "Username",
                hint: "boda43",
              ),
              const SizedBox(height: 20),
              const AuthTextField(
                label: "Email",
                hint: "boda97@gmail.com",
              ),
              const SizedBox(height: 20),
              // تم حذف خانة رقم الهاتف من هنا لنقلها للشاشة المستقلة
              const AuthTextField(
                label: "Password",
                hint: "••••••••",
                isPassword: true,
              ),

              const SizedBox(height: 20),

              // شروط الخدمة
              const Text.rich(
                TextSpan(
                  text: "By continuing you agree to our ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  children: [
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // زر التسجيل - ينقلك الآن لصفحة رقم الهاتف
              CustomButton(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneRegistrationScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              // العودة للـ Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}