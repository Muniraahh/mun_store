import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mun_store/utils/constants/colors.dart';
import 'package:mun_store/utils/constants/text_strings.dart';
import 'package:mun_store/utils/helpers/helper_functions.dart';

class MFormDivider extends StatelessWidget {
  const MFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5)),
        Text(MTexts.orSignInWith.capitalize!, style: Theme
            .of(context)
            .textTheme
            .labelMedium),
        Flexible(child: Divider(color: dark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60)),
      ],

    );
  }
}