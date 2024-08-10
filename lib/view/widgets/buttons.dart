import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
    required this.buttonText,
    required this.buttonIcon,
    required this.onPressed,
  });

  final String buttonText;
  final Icon buttonIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
              Theme.of(context).colorScheme.primaryContainer),
          padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  width: 5,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                )),
          )),
      onPressed: onPressed,
      label: Text(buttonText),
      icon: buttonIcon,
    );
  }
}
