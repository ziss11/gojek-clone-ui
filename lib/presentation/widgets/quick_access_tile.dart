import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';

class QuickAccessTile extends StatelessWidget {
  const QuickAccessTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 15,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.green,
            radius: 14,
            child: SvgPicture.asset(
              'assets/icons/ic_goride.svg',
              width: 20,
            ),
          ),
          const Gap(12),
          Text(
            'Pintu masuk motor, MNC Land',
            style: Get.textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              color: AppColors.black,
              fontWeight: AppFontWeights.regular,
            ),
          ),
          const Spacer(),
          IconButton(
            constraints: const BoxConstraints(
              maxWidth: 0,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
