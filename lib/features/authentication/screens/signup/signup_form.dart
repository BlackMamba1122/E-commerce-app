import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/signup/signup_controller.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:flutter_application_1/utils/validators/validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = BHelperFunctions.isDarkMode(context);
    return Form(
      key: controller.signupFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstname,
                  validator: (value) => BValidator.validateEmptyText('First Name', value),
                  decoration: const InputDecoration(
                    labelText: BTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: BSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastname,
                  validator: (value) => BValidator.validateEmptyText('Last Name', value),
                  decoration: const InputDecoration(
                    labelText: BTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.username,
            validator: (value) => BValidator.validateEmptyText('Username', value),
            decoration: const InputDecoration(
              labelText: BTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => BValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: BTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => BValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: BTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.password,
            validator: (value) => BValidator.validatePassword(value),
            obscureText: true,
            decoration: const InputDecoration(
              labelText: BTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwSections),
          Row(
            children: [
              const SizedBox(
                width: 24,
                height: 24,
                child: Icon(Iconsax.tick_circle),
              ),
              const SizedBox(width: BSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: BTexts.iAgreeTo,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: BTexts.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? BColors.white : BColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? BColors.white : BColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: BTexts.and,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: BTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? BColors.white : BColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? BColors.white : BColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: BSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (controller.signupFormKey.currentState!.validate()) {
                  controller.signup();
                }
              },
              child: const Text(BTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
