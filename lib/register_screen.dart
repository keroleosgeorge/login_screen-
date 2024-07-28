import 'package:flutter/material.dart';
import 'package:flutter_apps/componnets/Custom_Container_Textfromfield.dart';

import 'componnets/Custom_Buttonwithoutcontainer.dart';
import 'componnets/Custom_Container_Contain.dart';
import 'componnets/Custom_Container_image.dart';
import 'componnets/Custom_Text_form_Field.dart';
import 'componnets/Custum_Button.dart';
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
                  SizedBox(height: 20),
                  CustomContainerTextfromfield(
                    color: Colors.white,
                      child: CustomTextFormField(
                          icon: Icons.person,
                          labelText: "Username",
                         )),
                  SizedBox(height: 20),
                  CustomContainerTextfromfield(
                      color: Colors.white,
                      child: CustomTextFormField(
                          icon: Icons.email,
                          labelText: "Email",
                         )),
                  SizedBox(height: 20,),
              CustomContainerTextfromfield(
                  color: Colors.white,
                  child: CustomTextFormField(
                    initialIsObscure: true,
                      icon: Icons.lock,
                      labelText: "Password",
                      )),
                  SizedBox(height: 20),
                  CustumButton(
                    child: CustomButtonwithoutcontainer(
                      text: 'Register',
                    )
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If you have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text('Login'),
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
