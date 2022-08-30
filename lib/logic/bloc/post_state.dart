part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostLoadingState extends PostState {}

class PostLoadedState extends PostState {
  final PostModel posts;

  PostLoadedState({required this.posts});
}

class PostFailureState extends PostState {
  final dynamic error;

  PostFailureState({required this.error});
}
