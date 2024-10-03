import 'package:flutter/material.dart';

class buttonKategori extends StatelessWidget {
  final Function()? onPressed;
  final Icon icon;
  final Text label;

  const buttonKategori({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        onPressed;
      },
      icon: icon,
      label: label,
      style: ElevatedButton.styleFrom(),
    );
  }
}
