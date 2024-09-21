import 'package:flutter/material.dart';
import '../components/theme.dart';
import '../components/CustomTextField.dart';
import '../components/customButton.dart';
import 'homePage.dart';
class LoginPage extends StatefulWidget {
  final Function() onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void login() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController loginController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/aquasys.png', width: 250, height: 250),
          CustomTextField(
              controller: loginController,
              hintText: 'Login',
              obscureText: false),
          const SizedBox(height: 15),
          CustomTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(height: 15),
          CustomButton(text: 'Entrar', onPressed: login),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?'),
              TextButton(onPressed: widget.onTap, child: const Text('Register now!'))
            ],
          )
        ],
      ),
    );
  }
}
