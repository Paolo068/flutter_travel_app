import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? fullWidth;
  final double? width;
  final String text;
  ResponsiveButton(
      {super.key, this.text = "", this.width = 120, this.fullWidth = false});

  @override
  Widget build(BuildContext context) {
    text.isEmpty ? fullWidth = false : fullWidth = true;
    return Flexible(
      child: Container(
        width: fullWidth == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: text, //fullWidth == true ? text : "",
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.forward_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
