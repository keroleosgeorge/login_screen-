import 'package:flutter/material.dart';
import 'package:flutter_apps/Tests/test2.dart';


class Test extends StatefulWidget {
  const Test({Key? key}) ;

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form( // Wrap the entire content with Form
        key: _formKey, // Assign the GlobalKey to the Form
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Keroleos', style: TextStyle(color: Colors.red, fontSize: 20)),
                Text('Keroleos 2', style: TextStyle(color: Colors.red, fontSize: 20)),
              ],
            ),
            const SizedBox(height: 25),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/7535647.jpg'),
              radius: 70,
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter any text';
                  }
                  if (!value.contains('@')) {
                    return 'Invalid Email';
                  }
                  return null; // Input is valid
                },
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Validation passed, process the form data
                  final enteredName = controller.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test2(name: enteredName)),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
