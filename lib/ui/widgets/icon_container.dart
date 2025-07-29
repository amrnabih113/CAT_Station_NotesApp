
import 'package:flutter/material.dart';
import 'package:note_app_test/utils/constants/colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({required this.icon, super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: MyColors.darkContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(right: 10),
      child: Icon(icon, color: Colors.white),
    );
  }
}
