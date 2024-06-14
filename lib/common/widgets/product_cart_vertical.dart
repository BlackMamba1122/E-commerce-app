
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/b_brand_title_with_icon.dart';
import 'package:flutter_application_1/common/widgets/b_round_image.dart';
import 'package:flutter_application_1/common/widgets/circle_conatiner.dart';
import 'package:flutter_application_1/common/widgets/circular_Icon.dart';
import 'package:flutter_application_1/common/widgets/product_price.dart';
import 'package:flutter_application_1/common/widgets/product_title.dart';
import 'package:flutter_application_1/common/widgets/shadow.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/imge_string.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(BSizes.productImageRadius),
          color: dark ? BColors.darkerGrey : BColors.white
        ),
        child: Column(
          children: [
            CircleConatiner(
              height: 180,
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: dark ? BColors.dark : BColors.light,
              child: Stack(
                children: [
                  const BRoundImage(imageUrl: BImages.productImage1),
                  Positioned(
                    top: 12,
                    child: CircleConatiner(
                      radius: BSizes.sm,
                      backgroundColor: BColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: BSizes.sm,vertical: BSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
                    ),
                  ),
                  const BCircluarIcon(icon: Iconsax.heart5,color: Colors.red,),
                ],
              )
            ),
            const SizedBox(height: BSizes.spaceBtwItems/2),
            const Padding(
            padding: EdgeInsets.only(left: BSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BProductTitleText(title: 'Green Nike Shoes',smallSize: true,),
                SizedBox(height: BSizes.spaceBtwItems/2),
                BBrandTitle(title: 'Nike'),
              ],
            ),
            ),
            const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: BSizes.sm),
                      child: BProductPrice(price: '1234'),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(BSizes.cardRadiusMd),
                          bottomRight: Radius.circular(BSizes.productImageRadius),
                        )
                      ),
                      child: const SizedBox(
                        width: BSizes.iconLg*1.2,
                        height: BSizes.iconLg*1.2,
                        child: Center(child: Icon(Iconsax.add,color: BColors.white))
                        ),
                    )
                  ],
                )
          ],
        ),
      ),
    );
  }
}

