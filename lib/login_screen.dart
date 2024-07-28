import 'package:flutter/material.dart';
import 'package:flutter_apps/componnets/Custom_Container_Contain.dart';
import 'package:flutter_apps/componnets/Custom_Container_Textfromfield.dart';
import 'package:flutter_apps/componnets/Custom_Text_form_Field.dart';
import 'package:flutter_apps/componnets/Custum_Button.dart';
import 'package:flutter_apps/reset_pass.dart';
import 'componnets/Custom_Container_image.dart';
import 'register_screen.dart';

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
                  child: Icon(Icons.person, size: 80, color: Colors.white),
                ),
                SizedBox(height: 20),
                CustomContainerTextfromfield(
                  color: Colors.blue.shade50,
                    child: CustomTextFormField(
                        icon: Icons.person,
                        labelText: "Username",
                        )),
                SizedBox(height: 20),
                CustomContainerTextfromfield(
                  color: Colors.blue.shade50,
                  child: CustomTextFormField(
                   initialIsObscure: true,
                    icon: Icons.lock,
                    labelText: "Password",

                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot your password?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetPass()),
                        );
                      },
                      child: Text('Reset Password'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustumButton(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: Text('Register'),
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
