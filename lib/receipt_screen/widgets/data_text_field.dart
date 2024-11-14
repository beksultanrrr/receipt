import 'package:flutter/material.dart';
import 'package:receipt/components/theme/theme.dart';

class DataTextField extends StatelessWidget {
  const DataTextField({super.key, required this.title, required this.textEditingController});
  final String title;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleSmall?.copyWith(color: textSecondaryColor, height: 1),
          ),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              labelStyle: theme.textTheme.bodyMedium,
              contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
              isDense: true,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: 1),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: 1),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor, width: 1),
              ),
            ),
            style: const TextStyle(
              height: 1, 
            ),
          ),
        ],
      ),
    );
  }
}
