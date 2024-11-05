import 'package:client/core/theme/app_pallete.dart';
import 'package:client/extensions/extension.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const AuthGradientButton(
      {super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Palette.gradient1,
            Palette.gradient2,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Palette.transparentColor,
          shadowColor: Palette.transparentColor,
          fixedSize: const Size(
            395,
            55,
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ).onTap(
      onTap,
    );
  }
}
