import 'package:flutter/material.dart';

extension onTapExtension on Widget {
  Widget onTap(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
}

extension paddingExtension on Widget {
  Widget padSymmetric(double horizontial, double vertical) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontial,
      ),
      child: this,
    );
  }

  Widget padAll(double value) {
    return Padding(
      padding: EdgeInsets.all(
        value,
      ),
      child: this,
    );
  }

  Widget padLeft(double value) {
    return Padding(
      padding: EdgeInsets.only(
        left: value,
      ),
      child: this,
    );
  }

  Widget padRight(double value) {
    return Padding(
      padding: EdgeInsets.only(
        right: value,
      ),
      child: this,
    );
  }

  Widget padTop(double value) {
    return Padding(
      padding: EdgeInsets.only(
        top: value,
      ),
      child: this,
    );
  }

  Widget padButtom(double value) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: value,
      ),
      child: this,
    );
  }
}
