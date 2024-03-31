import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
// import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/small_screen.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(child: SideMenu(),),
      body: const ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),)
    );
  }
}