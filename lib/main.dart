import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/controllers/menu_controller.dart' as menu_controller;
import 'package:web_dashboard/controllers/navigation_controller.dart';
import 'package:web_dashboard/layout.dart';
import 'package:web_dashboard/pages/404/error_page.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/routing/routes.dart';

void main(){
  
  Get.put(NavigationController());
  Get.put(menu_controller.MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => PageNotFound(),
        transition: Transition.fadeIn
      ),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(name: AuthenticationPageRoute, page: () => AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }
        ),
        primaryColor: Colors.black,
      ),
      // home: AuthenticationPage(),

    );
  }
}