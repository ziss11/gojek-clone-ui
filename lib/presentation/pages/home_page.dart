import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';
import 'package:gojek_clone_ui/presentation/controllers/home_controller.dart';
import 'package:gojek_clone_ui/presentation/widgets/gopay_card.dart';
import 'package:gojek_clone_ui/presentation/widgets/search_textfield.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 23,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: SearchTextField(),
                ),
                const Gap(15),
                Badge(
                  backgroundColor: AppColors.superLightBlue,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(2),
                  offset: const Offset(1, 2),
                  label: SvgPicture.asset(
                    'assets/icons/ic_club.svg',
                    height: 12,
                    width: 9,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      AppColors.blue,
                      BlendMode.srcIn,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),
            const Gap(15),
            Container(
              width: Get.size.width,
              height: 100,
              padding: const EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  listIndicator(),
                  const Gap(8),
                  gopayList(),
                  const Gap(18),
                  optionItem(
                    label: 'Bayar',
                    icon: SvgPicture.asset('assets/icons/ic_arrow_up.svg'),
                  ),
                  const Gap(21),
                  optionItem(
                    label: 'Top Up',
                    icon: SvgPicture.asset('assets/icons/ic_plus.svg'),
                  ),
                  const Gap(17),
                  optionItem(
                    label: 'Explore',
                    icon: SvgPicture.asset('assets/icons/ic_explore.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listIndicator() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        controller.gopayChargeList.length,
        (index) => Obx(
          () => Container(
            height: 8,
            width: 2,
            margin: const EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              color: (controller.gopayIndex.value == index)
                  ? AppColors.lightGray
                  : AppColors.gray,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ).toList(),
    );
  }

  Widget gopayList() {
    return Flexible(
      child: CarouselSlider.builder(
        itemCount: controller.gopayChargeList.length,
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          autoPlay: false,
          enableInfiniteScroll: false,
          scrollPhysics: const BouncingScrollPhysics(),
          enlargeCenterPage: true,
          height: 127,
          onPageChanged: (index, reason) {
            controller.gopayIndex.value = index;
          },
        ),
        itemBuilder: (context, index, realIndex) {
          final gopayCharge = controller.gopayChargeList[index];
          return GopayCard(
            gopaCharge: gopayCharge,
          );
        },
      ),
    );
  }

  Widget optionItem({required String label, required Widget icon}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: icon,
        ),
        const Gap(7),
        Text(
          label,
          style: Get.textTheme.bodyMedium?.copyWith(
            fontSize: 14,
            fontWeight: AppFontWeights.semibold,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
