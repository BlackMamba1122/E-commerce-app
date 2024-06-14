import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/b_brand_title_text.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class BBrandTitle extends StatelessWidget {
  const BBrandTitle({
    super.key, required this.title, this.maxLines=1, this.textColor, this.iconColor=BColors.primary, this.textAlign=TextAlign.center, this.brandTextSize=TextSizes.small,
  });
  
  final String title;
  final int maxLines;
  final Color? textColor,iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            ),
        ),
        const SizedBox(width: BSizes.xs),
        const Icon(Iconsax.verify,color: BColors.primary,size: BSizes.iconxs,)
      ],
    );
  }
}


