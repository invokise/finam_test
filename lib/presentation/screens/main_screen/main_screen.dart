import 'package:finam_test/generated/l10n.dart';
import 'package:finam_test/logic/bloc/post_bloc.dart';
import 'package:finam_test/presentation/screens/main_screen/widgets/post_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mainScreen),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<PostBloc>(context).add(PostLoadedEvent());
        },
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PostLoadedState) {
              return ListView.separated(
                  itemCount: state.posts.data.dist,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemBuilder: (context, index) {
                    return PostCardWidget(
                      data: state.posts.data.children[index].data,
                    );
                  });
            }
            if (state is PostFailureState) {
              return Center(child: Text(state.error.toString()));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
