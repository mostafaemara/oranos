import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final VoidCallback onPressed;
  const LanguageButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
            foregroundColor: Theme.of(context).colorScheme.onBackground),
        onPressed: onPressed,
        icon: const Icon(Icons.language),
        label: const Text(
          "English",
        ));
  }
}
