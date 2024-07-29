import 'package:flutter/material.dart';


import '../componnets_login/Custom_Buttonwithoutcontainer.dart';
import '../componnets_login/Custom_Container_Contain.dart';
import '../componnets_login/Custom_Container_Textfromfield.dart';
import '../componnets_login/Custom_Container_image.dart';
import '../componnets_login/Custom_Text_form_Field.dart';
import '../componnets_login/Custum_Button.dart';
import 'register_screen.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ResetPass> {

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container_For_All_Widgets(
              column: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
              CustomContainerImage(
                circle: false,
                    child: const Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomContainerTextfromfield(
                    color: Colors.white,
                    child: CustomTextFormField(
                      icon: Icons.email,
                      labelText: "Email",

                    )
                  ),

                  const SizedBox(height: 20),


                  CustumButton(
                    child: CustomButtonwithoutcontainer(
                      text: 'Reset Password',
                    )
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterScreen()),
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
      ),
    );
  }
}
