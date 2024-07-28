import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.icon,
    required this.labelText,
    this.initialIsObscure = false,
  });

  final IconData icon;
  final String labelText;
  final bool initialIsObscure;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.initialIsObscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(widget.icon, color: Colors.blue),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.blue),
        suffixIcon: widget.initialIsObscure
            ? IconButton(
          icon: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        )
            : null,
      ),
    );
  }
}
