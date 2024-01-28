import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onTap;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key, required this.onTap});

  void login(BuildContext context) async {
    // auth service
    final authService = AuthService();

    // try login

    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _passwordController.text);
    }
    // catch any errors

    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text(
            "Welcome back, you've been missed",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          MyTextField(
            controller: _emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: _passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: "Login",
            onTap: () => login(context),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: onTap,
                child: const Text(
                  "Create an account",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
