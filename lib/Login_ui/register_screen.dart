import 'package:flutter/material.dart';


import '../componnets_login/Custom_Buttonwithoutcontainer.dart';
import '../componnets_login/Custom_Container_Contain.dart';
import '../componnets_login/Custom_Container_Textfromfield.dart';
import '../componnets_login/Custom_Container_image.dart';
import '../componnets_login/Custom_Text_form_Field.dart';
import '../componnets_login/Custum_Button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container_For_All_Widgets(
              column: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomContainerImage(
                    circle: true,
                    child: Image.asset('assets/7535647.jpg', height: 80, width: 80,),
                  ),
                  const SizedBox(height: 20),
                  CustomContainerTextfromfield(
                    color: Colors.white,
                      child: CustomTextFormField(
                          icon: Icons.person,
                          labelText: "Username",
                         )),
                  const SizedBox(height: 20),
                  CustomContainerTextfromfield(
                      color: Colors.white,
                      child: CustomTextFormField(
                          icon: Icons.email,
                          labelText: "Email",
                         )),
                  const SizedBox(height: 20,),
              CustomContainerTextfromfield(
                  color: Colors.white,
                  child: CustomTextFormField(
                    initialIsObscure: true,
                      icon: Icons.lock,
                      labelText: "Password",
                      )),
                  const SizedBox(height: 20),
                  CustumButton(
                    child: CustomButtonwithoutcontainer(
                      text: 'Register',
                    )
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("If you have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
