import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/password_config/reset_password.dart';
import 'package:flutter_application_1/features/authentication/screens/signup/signup.dart';
import 'package:flutter_application_1/navigation_bar.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  bool _rememberMe = true; // Added variable to control checkbox state

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: BTexts.email,
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwInputFields),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: BTexts.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe, // Set value based on _rememberMe variable
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value ?? false; // Update _rememberMe with new value
                        });
                      },
                    ),
                    const Text(BTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: ()=>Get.to(()=> const ResetPassword()),
                  child: const Text(BTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: BSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(const NavigationMenu()),
                child: const Text(BTexts.signIn),
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(BTexts.createAccount),
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
