import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;
  const InfoCard({
    super.key, 
    required this.title, 
    required this.value, 
    required this.topColor, 
    this.isActive = false, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12
              )
            ],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor ?? active,
                      height: 5,
                    )
                  ),
                ],
              ),
              Expanded(
                child: Container(

                )
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: isActive ? active : lightGrey,
                      )
                    ),
                    TextSpan(
                      text: '$value',
                      style: TextStyle(
                        fontSize: 40,
                        color: isActive ? active : dark,
                      )
                    )
                  ]
                ),

              ),
              Expanded(
                child: Container(
                  
                )
              )
            ],
          ),
        ),
      )
    );
  }
}