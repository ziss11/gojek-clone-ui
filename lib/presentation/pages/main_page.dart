import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/common/app_colors.dart';
import 'package:gojek_clone_ui/common/app_font_weights.dart';
import 'package:gojek_clone_ui/presentation/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.green,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          ),
          flexibleSpace: SafeArea(
            child: ColoredBox(
              color: AppColors.green,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  indicatorPadding: const EdgeInsets.all(5),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: AppColors.darkGreen,
                  unselectedLabelColor: AppColors.white,
                  labelStyle: Get.textTheme.bodyMedium?.copyWith(
                    fontWeight: AppFontWeights.semibold,
                  ),
                  tabs: const [
                    Tab(text: 'Beranda'),
                    Tab(text: 'Promo'),
                    Tab(text: 'Pesanan'),
                    Tab(text: 'Chat'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const HomePage(),
            tabBarViewContent(contentText: 'Promo'),
            tabBarViewContent(contentText: 'Pesanan'),
            tabBarViewContent(contentText: 'Chat'),
          ],
        ),
      ),
    );
  }

  Widget tabBarViewContent({required String contentText}) {
    return Center(
      child: Text(
        contentText,
        style: Get.textTheme.bodyMedium,
      ),
    );
  }
}
