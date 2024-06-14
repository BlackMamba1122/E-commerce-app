import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/success_screen.dart';
import 'package:flutter_application_1/features/authentication/screens/login/login.dart';
import 'package:flutter_application_1/utils/constants/imge_string.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              Image(image: const AssetImage(BImages.verifyEmail), width: BHelperFunctions.screenWidth()*0.6),
              const SizedBox(height: BSizes.spaceBtwItems),
              Text(BTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: BSizes.spaceBtwItems),
              Text('bscs23169@itu.edu.pk', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: BSizes.spaceBtwItems),
              Text(BTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: BSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(()=>SuccessScreen(
                    image: BImages.highFive,
                    title: BTexts.yourAccountCreatedTitle,
                    subtitle: BTexts.yourAccountCreatedSubTitle, 
                    onPressed: ()=>Get.off(()=> const LoginScreen())
                    ),),
                  child: const Text(BTexts.continu))),
              const SizedBox(height: BSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(BTexts.resendEmail))),
              const SizedBox(height: BSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
