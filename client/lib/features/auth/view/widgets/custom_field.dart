import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomField extends StatefulWidget {
  final TextEditingController controller;
  final String textfieldName;
  bool isPass;
  CustomField({
    super.key,
    required this.controller,
    required this.textfieldName,
    this.isPass = false,
  });

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.textfieldName,
        suffixIcon: widget.isPass
            ? IconButton(
                icon: Icon(
                  onTap ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    onTap = !onTap;
                  });
                },
              )
            : null,
      ),
      obscureText: !onTap,
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "${widget.textfieldName} is missing.";
        }
        return null;
      },
    );
  }
}
