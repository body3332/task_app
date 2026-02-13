import 'package:flutter/material.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/auth_text_field.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            // لضمان محاذاة كل شيء لليسار
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
                "Login",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your emails and password",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              const SizedBox(height: 40),

              // حقول الإدخال (تم حذف الـ alignment لأن الـ Column يتولى ذلك)
              const AuthTextField(
                label: "Email",
                hint: "imshuvo97@gmail.com",
              ),
              const SizedBox(height: 20),
              const AuthTextField(
                label: "Password",
                hint: "••••••••",
                isPassword: true,
              ),

              // نسيت كلمة المرور جهة اليمين
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // أضف وظيفة استعادة كلمة المرور هنا
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // زر تسجيل الدخول
              CustomButton(
                text: "Log In",
                onPressed: () {
                  // أضف وظيفة تسجيل الدخول هنا
                },
              ),

              const SizedBox(height: 10),

              // الانتقال لإنشاء حساب
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}