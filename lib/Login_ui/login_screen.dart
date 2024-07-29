import 'package:flutter/material.dart';
import 'package:flutter_apps/Login_ui/register_screen.dart';
import 'package:flutter_apps/Login_ui/reset_pass.dart';

import '../componnets_login/Custom_Container_Contain.dart';
import '../componnets_login/Custom_Container_Textfromfield.dart';
import '../componnets_login/Custom_Container_image.dart';
import '../componnets_login/Custom_Text_form_Field.dart';
import '../componnets_login/Custum_Button.dart';





class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container_For_All_Widgets(
            column: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomContainerImage(
                  circle: true,
                  child: const Icon(Icons.person, size: 80, color: Colors.white),
                ),
                const SizedBox(height: 20),
                CustomContainerTextfromfield(
                  color: Colors.blue.shade50,
                    child: CustomTextFormField(
                        icon: Icons.person,
                        labelText: "Username",
                        )),
                const SizedBox(height: 20),
                CustomContainerTextfromfield(
                  color: Colors.blue.shade50,
                  child: CustomTextFormField(
                   initialIsObscure: true,
                    icon: Icons.lock,
                    labelText: "Password",

                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Forgot your password?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetPass()),
                        );
                      },
                      child: const Text('Reset Password'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustumButton(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
