import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width/48,),
                  Padding(padding: EdgeInsets.only(right: 12),
                  child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )
                ),

                SizedBox(width: _width / 48,)
                ],
              ),
              SizedBox(height: 40,),
            ],
          ),
        
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((item) => SideMenuItem(
              itemName: item.name, 
              onTap: (){
                if(item.route == AuthenticationPageRoute){
                  // TODO: go to authentication page
                  menuController.changeActiveItemTo(OverViewPageDisplayName);
                  Get.offAllNamed(AuthenticationPageRoute);
                  // Get.offAll(() => AuthenticationPage());
                }
                if(!menuController.isActive(item.name)){
                  menuController.changeActiveItemTo(item.name);
                  if(ResponsiveWidget.isSmallScreen(context))
                  Get.back();
                  // TODO: got to item name route
                  navigationController.navigateTo(item.route);
                }
              },
            )).toList()
          )
        ]
      ),
    );
  }
}