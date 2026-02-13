import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';

class AuthTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const AuthTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.darkGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          obscureText: widget.isPassword ? _obscureText : false,
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE2E2E2)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
