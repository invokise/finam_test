import 'package:finam_test/assets/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChapterWidget extends StatelessWidget {
  const ChapterWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.defaultTextStyle,
        children: <TextSpan>[
          TextSpan(
            text: "$title : ",
            style: AppTextStyles.headTextStyle,
          ),
          TextSpan(text: description),
        ],
      ),
    );
  }
}
