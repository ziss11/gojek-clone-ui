import 'package:get/get.dart';
import 'package:gojek_clone_ui/models/promo_model.dart';

class HomeController extends GetxController {
  final gopayIndex = 0.obs;
  final gopayChargeList = [12379, 10000];
  final promoList = const [
    PromoModel(
      title: 'Makin Seru',
      subtitle: 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
      imagePath: 'assets/images/banner_1.png',
    ),
    PromoModel(
      title: 'Makin Seru',
      subtitle: 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
      imagePath: 'assets/images/banner_2.png',
    ),
    PromoModel(
      title: 'Makin Seru',
      subtitle: 'Promo Belanja Online 10.10: Cashback hingga Rp100.000',
      imagePath: 'assets/images/banner_3.png',
    ),
  ];
}
