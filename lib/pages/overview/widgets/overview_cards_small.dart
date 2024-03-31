import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress", 
            value: "7", 
            topColor: Colors.orange,
            onTap: (){},
            isActive: true,
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: "Packages delivered", 
            value: "17", 
            topColor: Colors.lightGreen,
            onTap: (){},
            isActive: true,
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery", 
            value: "3", 
            topColor: Colors.redAccent,
            onTap: (){},
            isActive: true,
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries", 
            value: "3", 
            topColor: Colors.pink,
            onTap: (){},
            isActive: true,
          ),
          SizedBox(
            height: _height / 64,
          ),
        ],
      ),
    );
  }
}