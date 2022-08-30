import 'package:finam_test/assets/app_colors.dart';
import 'package:finam_test/data/models/children_data_model.dart';
import 'package:finam_test/generated/l10n.dart';
import 'package:finam_test/presentation/widgets/chapter_widget.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, required this.data}) : super(key: key);
  final ChildrenDataModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).postScreen),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        color: AppColors.purple200,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ChapterWidget(
                title: S.of(context).title,
                description: data.title,
              ),
              ChapterWidget(
                title: S.of(context).ups,
                description: data.ups.toString(),
              ),
              ChapterWidget(
                title: S.of(context).textOfThePost,
                description: data.selfText.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
