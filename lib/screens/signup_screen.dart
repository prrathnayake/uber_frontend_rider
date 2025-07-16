import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Name: ${nameController.text}");
      print("Email: ${emailController.text}");
      print("Password: ${passwordController.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomInputField(
                label: "Full Name",
                hint: "Enter your name",
                icon: Icons.person,
                controller: nameController,
                validator: (val) =>
                    val == null || val.isEmpty ? "Name is required" : null,
              ),
              CustomInputField(
                label: "Email",
                hint: "Enter your email",
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (val) => val != null && val.contains("@")
                    ? null
                    : "Enter valid email",
              ),
              CustomInputField(
                label: "Password",
                hint: "Enter password",
                icon: Icons.lock,
                isPassword: true,
                controller: passwordController,
                validator: (val) =>
                    val != null && val.length >= 6 ? null : "Min 6 chars",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login'),
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
