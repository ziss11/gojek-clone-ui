import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';
import 'package:intl/intl.dart';

class GopayCard extends StatelessWidget {
  final num gopaCharge;

  const GopayCard({
    super.key,
    required this.gopaCharge,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/gopay.png',
            height: 14,
          ),
          const Gap(4),
          Text(
            NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0)
                .format(gopaCharge),
            style: Get.textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: AppFontWeights.semibold,
            ),
          ),
          Text(
            'Klik & cek riwayat',
            style: Get.textTheme.bodyMedium?.copyWith(
              color: AppColors.green,
              fontSize: 12.5,
              fontWeight: AppFontWeights.semibold,
            ),
          )
        ],
      ),
    );
  }
}
