import 'package:finam_test/assets/app_colors.dart';
import 'package:finam_test/data/models/children_data_model.dart';
import 'package:finam_test/generated/l10n.dart';
import 'package:finam_test/presentation/screens/post_screen/post_screen.dart';
import 'package:finam_test/presentation/widgets/chapter_widget.dart';
import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final ChildrenDataModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: AppColors.purple200,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostScreen(
                data: data,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (data.thumbnail == "self" || data.thumbnail == null)
                  ? const SizedBox()
                  : Center(
                      child: Image.network(
                        data.thumbnail!,
                      ),
                    ),
              const SizedBox(
                height: 10,
              ),
              ChapterWidget(
                title: S.of(context).title,
                description: data.title.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
