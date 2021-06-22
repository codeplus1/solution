import 'package:flutter/material.dart';

Widget textEntry(String hint, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(hintText: hint),
  );
}
