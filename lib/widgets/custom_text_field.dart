import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;
  const CustomTextField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: 'البحث',
        prefixIcon: const Icon(Icons.search),
        hintTextDirection: TextDirection.rtl,
      ),
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      textAlign: TextAlign.right,
    );
  }
}
