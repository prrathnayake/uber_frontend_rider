import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static final _formKey = GlobalKey<FormState>();
  static final usernameController = TextEditingController();
  static final passwordController = TextEditingController();

  void submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      print("Username: ${usernameController.text}");
      print("Password: ${passwordController.text}");

      Navigator.pushReplacementNamed(context, '/main');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomInputField(
                label: "Username",
                hint: "Enter your username",
                icon: Icons.person,
                controller: usernameController,
                validator: (val) =>
                    val == null || val.isEmpty ? "Username is required" : null,
              ),
              CustomInputField(
                label: "Password",
                hint: "Enter your password",
                icon: Icons.lock,
                controller: passwordController,
                isPassword: true,
                validator: (val) =>
                    val == null || val.length < 6
                        ? "Password must be at least 6 characters"
                        : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => submitForm(context),
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/signup'),
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
