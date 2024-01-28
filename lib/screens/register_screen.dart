import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final VoidCallback onTap;
  RegisterScreen({super.key, required this.onTap});

  void register(BuildContext context) {
    // get auth service
    final _auth = AuthService();
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        _auth.signUpWithEmailPassword(
            _emailController.text, _passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }
    // passwords dont match
    else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Password don't match!"),
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
            "Let's create an account for you",
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
            height: 10,
          ),
          MyTextField(
            controller: _passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: _confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            text: "Register",
            onTap: () => register(context),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: onTap,
                child: const Text(
                  "Login now",
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
