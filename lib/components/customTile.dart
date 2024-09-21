import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final IconData? icon;

  const CustomTile({super.key, required this.text, this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      onTap: onTap,
      leading: icon != null ? Icon(icon, color: Colors.black) : null, 
    );
  }
}