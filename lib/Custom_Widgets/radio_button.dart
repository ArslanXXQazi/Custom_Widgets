
import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;
  // final ThemeData theme;

  const RadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    // required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: theme.secondaryHeaderColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: theme.secondaryHeaderColor,
        ),
      ],
    );
  }
}