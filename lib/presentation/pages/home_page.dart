import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';
import 'package:gojek_clone_ui/presentation/controllers/home_controller.dart';
import 'package:gojek_clone_ui/presentation/widgets/gopay_card.dart';
import 'package:gojek_clone_ui/presentation/widgets/promo_card.dart';
import 'package:gojek_clone_ui/presentation/widgets/quick_access_tile.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Gap(32),
            Center(
              child: Wrap(
                spacing: 53,
                runSpacing: 29,
                children: [
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_goride.svg'),
                    label: 'GoRide',
                    backgroundColor: AppColors.green,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_gocar.svg'),
                    label: 'GoCar',
                    backgroundColor: AppColors.green,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_gofood.svg'),
                    label: 'GoFood',
                    backgroundColor: AppColors.red,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_gosend.svg'),
                    label: 'GoSend',
                    backgroundColor: AppColors.green,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_gomart.svg'),
                    label: 'GoMart',
                    backgroundColor: AppColors.red,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_gopulsa.svg'),
                    label: 'GoPulsa',
                    backgroundColor: AppColors.lightBlue,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_club.svg'),
                    label: 'GoClub',
                    backgroundColor: Colors.transparent,
                  ),
                  menuItem(
                    icon: SvgPicture.asset('assets/icons/ic_menu.svg'),
                    label: 'Lainnya',
                    backgroundColor: AppColors.lightGray,
                  ),
                ],
              ),
            ),
            const Gap(19),
            Container(
              width: Get.size.width,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage(
                    'assets/images/dots_bg.png',
                  ),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightGray,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/ic_xp.svg'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '117 XP lagi ada Harta Karun',
                          style: Get.textTheme.bodyMedium?.copyWith(
                            fontWeight: AppFontWeights.semibold,
                            fontSize: 14,
                            color: AppColors.black,
                          ),
                        ),
                        const Gap(8),
                        const SizedBox(
                          width: 210,
                          child: LinearProgressIndicator(
                            color: AppColors.gray,
                            valueColor: AlwaysStoppedAnimation(AppColors.green),
                            value: 0.7,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      constraints: const BoxConstraints(
                        maxWidth: 0,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(16),
            Text(
              'Akses cepat',
              style: Get.textTheme.titleLarge?.copyWith(
                fontWeight: AppFontWeights.bold,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
            const Gap(10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightGray,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuickAccessTile(),
                  QuickAccessTile(),
                ],
              ),
            ),
            const Gap(32),
            Image.asset(
              'assets/images/gopaylater.png',
              width: 98,
              height: 14,
            ),
            const Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Lebih hemat pake GoPayLater',
                  style: Get.textTheme.titleLarge?.copyWith(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: AppFontWeights.bold,
                  ),
                ),
                const Gap(2),
                Image.asset(
                  'assets/icons/ic_emot_1.png',
                  width: 16,
                  height: 16,
                ),
              ],
            ),
            const Gap(8),
            Text(
              'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
              overflow: TextOverflow.clip,
              style: Get.textTheme.titleLarge?.copyWith(
                color: AppColors.darkGray,
                fontSize: 14,
                fontWeight: AppFontWeights.regular,
              ),
            ),
            const Gap(24),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.promoList.length,
              separatorBuilder: (context, index) => const Gap(24),
              itemBuilder: (context, index) {
                final promo = controller.promoList[index];
                return PromoCard(promo: promo);
              },
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
          enlargeCenterPage: true,
          height: 127,
          scrollPhysics: const BouncingScrollPhysics(),
          onPageChanged: (index, reason) {
            controller.gopayIndex.value = index;
          },
        ),
        itemBuilder: (context, index, realIndex) {
          final gopayCharge = controller.gopayChargeList[index];
          return Obx(
            () => GopayCard(
              disabled: controller.gopayIndex.value != index,
              gopaCharge: gopayCharge,
            ),
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

  Widget menuItem({
    required Widget icon,
    required String label,
    Color? backgroundColor,
  }) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          child: icon,
        ),
        const Gap(9),
        Text(
          label,
          style: Get.textTheme.bodyMedium?.copyWith(
            color: AppColors.black,
            fontSize: 12.5,
            fontWeight: AppFontWeights.regular,
          ),
        )
      ],
    );
  }
}
