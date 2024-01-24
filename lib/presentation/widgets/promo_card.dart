import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';
import 'package:gojek_clone_ui/models/promo_model.dart';

class PromoCard extends StatelessWidget {
  final PromoModel promo;

  const PromoCard({
    super.key,
    required this.promo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGray,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              promo.imagePath,
              width: Get.size.width,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      promo.title,
                      style: Get.textTheme.titleMedium?.copyWith(
                        fontWeight: AppFontWeights.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Gap(2),
                    Image.asset(
                      'assets/icons/ic_emot_2.png',
                      width: 16,
                      height: 16,
                    ),
                  ],
                ),
                const Gap(8),
                Text(
                  promo.subtitle,
                  style: Get.textTheme.titleMedium?.copyWith(
                    fontWeight: AppFontWeights.regular,
                    color: AppColors.gray,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
