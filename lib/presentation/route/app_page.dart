import 'package:get/get.dart';
import 'package:tanda_kita/presentation/page/activity/practice_page.dart';
import 'package:tanda_kita/presentation/page/activity/transcribe_page.dart';
import 'package:tanda_kita/presentation/page/auth/login_page.dart';
import 'package:tanda_kita/presentation/page/camera/camera_page.dart';
import 'package:tanda_kita/presentation/page/home/home_page.dart';
import 'package:tanda_kita/presentation/page/home/index_page.dart';
import 'package:tanda_kita/presentation/page/home/profile_page.dart';
import 'package:tanda_kita/presentation/page/spash_page.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';

final appPage = <GetPage>[
  GetPage(
    name: AppRoutes.initialRoute,
    page: () => const SpashPage(),
  ),
  GetPage(
    name: AppRoutes.index,
    page: () => const IndexPage(),
  ),
  GetPage(
    name: AppRoutes.auth,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomePage(),
  ),
  GetPage(
    name: AppRoutes.transcribe,
    page: () => const TranscribePage(),
  ),
  GetPage(
    name: AppRoutes.practice,
    page: () => const PracticePage(),
  ),
  GetPage(
    name: AppRoutes.camera,
    page: () => const CameraPage(),
  ),
  GetPage(
    name: AppRoutes.profile,
    page: () => const ProfilePage(),
  ),
];
