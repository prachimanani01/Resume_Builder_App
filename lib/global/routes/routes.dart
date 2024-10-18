import 'package:flutter/cupertino.dart';
import 'package:resume_builder_app/screen/certificate_page/certificate_page.dart';
import 'package:resume_builder_app/screen/education_page/education_page.dart';
import 'package:resume_builder_app/screen/experience_page/experience_page.dart';
import 'package:resume_builder_app/screen/hobbie_page/hobbie_page.dart';
import 'package:resume_builder_app/screen/language_page/language_page.dart';
import 'package:resume_builder_app/screen/skill_page/skill_page.dart';

import '../../screen/details_page/details_page.dart';
import '../../screen/profile_page/profile_page.dart';
import '../../screen/splash_screen/splash_screen.dart';

class Routes {
  static String splash_screen = '/';
  static String profile_page = 'profile_page';
  static String details_page = 'details_page';
  static String education_page = 'education_page';
  static String experience_page = 'experience_page';
  static String language_page = 'language_page';
  static String skill_page = 'skill_page';
  static String certificate_page = 'certificate_page';
  static String hobbie_page = 'hobbie_page';

  static Map<String, WidgetBuilder> myRoutes = {
    splash_screen: (context) => const SplashScreen(),
    profile_page: (context) => const ProfilePage(),
    details_page: (context) => const DetailsPage(),
    education_page: (context) => const EducationPage(),
    experience_page: (context) => const ExperiencePage(),
    language_page: (context) => const LanguagePage(),
    skill_page: (context) => const SkillPage(),
    certificate_page: (context) => const CertificatePage(),
    hobbie_page: (context) => const HobbiePage(),
  };
}
