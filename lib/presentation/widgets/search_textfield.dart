import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      height: 40,
      child: TextField(
        style: Get.textTheme.bodyMedium?.copyWith(
          color: AppColors.black,
          fontWeight: AppFontWeights.regular,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.white,
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: SvgPicture.asset(
            'assets/icons/ic_search.svg',
            fit: BoxFit.scaleDown,
          ),
          hintText: 'Cari layanan, makanan, & tujuan',
          hintStyle: Get.textTheme.bodyMedium?.copyWith(
            color: AppColors.gray,
            fontSize: 14,
            fontWeight: AppFontWeights.regular,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: AppColors.lightGray,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: AppColors.lightGray,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
