import 'package:client/core/theme/app_pallete.dart';
import 'package:client/core/theme/text_style.dart';
import 'package:client/extensions/extension.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In.",
              style: CustomTextStyle.heading1,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomField(
              textfieldName: "Email",
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomField(
              textfieldName: "Password",
              controller: passwordController,
              isPass: true,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthGradientButton(
              buttonName: "Sign In",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            _bottomText(),
          ],
        ).padSymmetric(15, 0),
      ),
    );
  }

  Widget _bottomText() => RichText(
        text: TextSpan(
          text: "Don't have an account? ",
          style: Theme.of(context).textTheme.titleMedium,
          children: const [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Palette.gradient2,
              ),
            ),
          ],
        ),
      );
}
