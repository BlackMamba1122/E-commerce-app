import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar.dart';
import 'package:flutter_application_1/common/widgets/circular_icon.dart';
import 'package:flutter_application_1/common/widgets/grid_layout.dart';
import 'package:flutter_application_1/common/widgets/product_cart_vertical.dart';
import 'package:flutter_application_1/features/shop/screens/home/home.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {

  const Wishlist({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: BAppBar(
            title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              BCircluarIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen())),
            ],
           ),
           body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(BSizes.defaultSpace),
              child: Column(
                children: [
                  BGridViewLayout(itemCount: 4, itemBuilder: (_,index)=>const BProductCardVertical())
                ],
              ),
            ),
           ),
      );
  }
}