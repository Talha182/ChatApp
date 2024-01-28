import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // Initially show the login page
  bool showLoginScreen = true;

  // toggle between login and register pages
  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if the login screen should be shown
    if (showLoginScreen) {
      // Return the LoginScreen widget
      return LoginScreen(
        onTap: toggleScreens,
      );
    } else {
      // Return the RegisterScreen widget
      return RegisterScreen(
        onTap: toggleScreens,
      );
    }
  }
}
